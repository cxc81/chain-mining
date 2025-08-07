import time
import json
import os
import hashlib
import zipfile
from typing import List


class VersionPatcher():
    def __init__(self):
        script_dir = os.path.dirname(os.path.abspath(__file__))
        with open(os.path.join(script_dir, "patch_rules20.json"), "r") as file:
            rules: dict = json.load(file)
        self.file_path_content_replace_rules: dict = rules.get("file_path_content_replace", {})
        self.dir_path_rename_rules: dict = rules.get("dir_path_rename", {})
        self.file_path_rename_rules: dict = rules.get("file_path_rename", {})

    def _apply_file_path_content_replace(self, file_path: str, zip_rel_path: str) -> tuple[bool, str | None]:
        if zip_rel_path not in self.file_path_content_replace_rules:
            return False, None
        
        with open(file_path, "r", encoding="utf-8") as file:
            content: str = file.read()
        replacements = self.file_path_content_replace_rules.get(zip_rel_path)
        assert replacements is not None
        for replacement in replacements:
            content = content.replace(
                replacement["old"], 
                replacement["new"]
            )
        return True, content
    
    def _apply_dir_path_rename(self, zip_rel_path: str) -> str:
        for src_dir, dst_dir in self.dir_path_rename_rules.items():
            if zip_rel_path.startswith(src_dir):
                zip_rel_path = zip_rel_path.replace(src_dir, dst_dir, 1)
        return zip_rel_path
    
    def _apply_file_path_rename(self, zip_rel_path: str) -> str:
        return self.file_path_rename_rules.get(zip_rel_path, zip_rel_path)

    def apply_patches(self, file_path: str, zip_rel_path: str) -> tuple[bool, str, str | None]:
        patched, patched_content = self._apply_file_path_content_replace(file_path, zip_rel_path)
        zip_rel_path = self._apply_dir_path_rename(zip_rel_path)
        zip_rel_path = self._apply_file_path_rename(zip_rel_path)
        return patched, zip_rel_path, patched_content


def calculate_file_hash(file_path: str) -> str:
    """
    Calculate the MD5 hash of a file.

    Args:
        file_path (str): Path to the target file.

    Returns:
        str: Hexadecimal MD5 hash string of the file.
    """
    hash_md5 = hashlib.md5()
    with open(file_path, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()


def write_file_to_zip_with_patch(zipf: zipfile.ZipFile, patcher: VersionPatcher, file_path: str, zip_rel_path: str) -> None:
    zip_rel_path = zip_rel_path.replace("\\", "/")
    patched, patched_rel_path, patched_content = patcher.apply_patches(file_path, zip_rel_path)
    if patched:
        assert patched_content is not None
        original_date_time = time.localtime(os.stat(file_path).st_mtime)[:6]
        zipf.writestr(zipfile.ZipInfo(patched_rel_path, original_date_time), patched_content)
    else:
        zipf.write(file_path, patched_rel_path)


def create_zip_for_1_20_6(output_name: str, source_dir: str, candidates: List[str]) -> None:
    """
    Create a ZIP archive from specified files/directories within a source directory.

    Args:
        output_name (str):   Name of the output ZIP file (will be created in current directory)
        source_dir (str):   Root directory containing the files to package
        candidates (List[str]): List of relative paths within source_dir to include
    """
    output_file_name = f'{output_name}.zip'
    temp_file_name = f"{output_file_name}.tmp"

    # Create temporary ZIP file
    patcher = VersionPatcher()
    with zipfile.ZipFile(temp_file_name, "w", zipfile.ZIP_DEFLATED) as zipf:
        for candidate in candidates:
            candidate_path = os.path.join(source_dir, candidate)
            if os.path.isfile(candidate_path):
                write_file_to_zip_with_patch(zipf, patcher, candidate_path, candidate)
                continue

            for root, _, files in os.walk(candidate_path):
                for file in files:
                    file_path = os.path.join(root, file)
                    write_file_to_zip_with_patch(zipf, patcher, file_path, os.path.relpath(file_path, source_dir))

    # Execute replacement logic
    if os.path.exists(output_file_name):
        existing_hash = calculate_file_hash(output_file_name)
        temp_hash = calculate_file_hash(temp_file_name)
        if temp_hash == existing_hash:
            os.remove(temp_file_name)
            print(f'Skipped "{output_file_name}" (identical to the existing file)')
            return
    
    os.replace(temp_file_name, output_file_name)
    print(f'Zipped into "{output_file_name}"')

def main() -> None:
    """
    Main execution function for packaging operations.
    """
    create_zip_for_1_20_6(
        output_name="Chain Mining for 1.20.6",
        source_dir=".",
        candidates=[
            "pack20.mcmeta",
            "data/",
            "pack.png"
        ]
    )

if __name__ == "__main__":
    main()
