import os
import shutil
import hashlib
import json
import subprocess
import zipfile
from typing import List

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


def create_zip(output_name: str, source_dir: str, candidates: List[str]) -> bool:
    """
    Create a ZIP archive from specified files/directories within a source directory.

    Args:
        output_name (str):   Name of the output ZIP file (will be created in current directory)
        source_dir (str):   Root directory containing the files to package
        candidates (List[str]): List of relative paths within source_dir to include

    Returns:
        bool: True if new file was created, False if existing file was kept
    """
    output_file_name = f'{output_name}.zip'
    temp_file_name = f"{output_file_name}.tmp"

    # Create temporary ZIP file
    with zipfile.ZipFile(temp_file_name, "w", zipfile.ZIP_DEFLATED) as zipf:
        files_to_add: list[tuple[str, str]] = []
        for candidate in candidates:
            candidate_path = os.path.join(source_dir, candidate)
            if os.path.isfile(candidate_path):
                files_to_add.append((candidate_path, candidate))
                continue

            for root, _, files in os.walk(candidate_path):
                for file in files:
                    file_path = os.path.join(root, file)
                    relpath = os.path.relpath(file_path, source_dir)
                    files_to_add.append((file_path, relpath))
        
        files_to_add.sort(key=lambda x: x[1])

        for file_path, relpath in files_to_add:
            zipf.write(file_path, relpath)

    # Execute replacement logic
    if os.path.exists(output_file_name):
        existing_hash = calculate_file_hash(output_file_name)
        temp_hash = calculate_file_hash(temp_file_name)
        if temp_hash == existing_hash:
            os.remove(temp_file_name)
            print(f'Skipped "{output_file_name}" (identical to the existing file)')
            return False
    
    os.replace(temp_file_name, output_file_name)
    print(f'Zipped into "{output_file_name}"')
    return True

def get_candidates_from_pack_mcmeta() -> List[str]:
    """
    Fetch all the candidate directories from overlay entries, along with "pack.mcmeta", "data/", and "pack.png".

    Returns:
        List[str]: List of candidate paths.
    """
    candidates = ["pack.mcmeta", "data/", "pack.png"]
    with open("pack.mcmeta", "r", encoding="utf-8") as f:
        content = json.load(f)
    overlays = content.get("overlays", [])
    overlay_dirs = [entry.get("directory") for entry in overlays.get("entries")]
    candidates.extend(overlay_dirs)
    return candidates

def main() -> None:
    """
    Main execution function for packaging operations.
    """
    datapack_updated = create_zip(
        output_name="Chain Mining for 1.21.x",
        source_dir=".",
        candidates=get_candidates_from_pack_mcmeta()
    )
    if datapack_updated:
        shutil.copy("Chain Mining for 1.21.x.zip", "../../output/")
    subprocess.run(
        ["make", "cp"],
        cwd="../../scripts/",
        check=True
    )

    resource_updated = create_zip(
        output_name="Chain Mining Multi-language Support",
        candidates=["."],
        source_dir="resourcepacks"
    )
    if resource_updated:
        target_dir = "/mnt/d/directory/games/minecraft/launcher/.minecraft/resourcepacks/"
        shutil.copy("Chain Mining Multi-language Support.zip", target_dir)
        print("Copied the resource pack")

if __name__ == "__main__":
    main()
