import os, shutil

def list_files_in_directory(directory):
    file_list = []
    
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_list.append(os.path.join(root, file))
            
    return file_list

directory_path = "./lab1"
files = list_files_in_directory(directory_path)
target_directory = "./lab1"

for file in files:
    file_name = os.path.basename(file)
    target_path = os.path.join(target_directory, file_name)
    
    shutil.move(file, target_path)
    print(f"Moved {file} to {target_path}")