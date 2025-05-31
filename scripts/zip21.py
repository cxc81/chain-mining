import os
import shutil
import hashlib
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
        for candidate in candidates:
            candidate_path = os.path.join(source_dir, candidate)
            if os.path.isfile(candidate_path):
                zipf.write(candidate_path, candidate)
                continue

            for root, _, files in os.walk(candidate_path):
                for file in files:
                    file_path = os.path.join(root, file)
                    zipf.write(file_path, os.path.relpath(file_path, source_dir))

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

def main() -> None:
    """
    Main execution function for packaging operations.
    """
    datapack_updated = create_zip(
        output_name="Chain Mining for 1.21.x",
        source_dir=".",
        candidates=[
            "pack.mcmeta",
            "data/",
            "overlay_since_1_21_2/",
            "overlay_since_1_21_4/",
            "overlay_since_1_21_5/",
            "pack.png"
        ]
    )
    if datapack_updated:
        shutil.copy("Chain Mining for 1.21.x.zip", "../../")
    subprocess.run(
        ["make", "cp"],
        cwd="../../scripts/",
        check=True
    )

    resource_updated = create_zip(
        output_name="Chain Mining Muiti-language Support",
        candidates=["."],
        source_dir="resourcepacks"
    )
    if resource_updated:
        target_dir = "../../../../launcher/.minecraft/resourcepacks/"
        shutil.copy("Chain Mining Muiti-language Support.zip", target_dir)

if __name__ == "__main__":
    main()
