import argparse
import json
import os
import shutil
from datetime import datetime


class CleanFolder:
    def __init__(self, to_clean_path, config_file=None):
        self.by_date = False
        self.only_directories = False
        self.recursive = False
        self.depth = None

        if config_file:
            self._load_config(config_file)
        else:
            self.to_clean_path = os.path.expanduser(to_clean_path)
            self.log_path = os.path.join(
                self.to_clean_path, "DownloadOrganizer", "activity_log.txt"
            )
            self.subfolders = {}

        if not os.path.exists(self.to_clean_path):
            raise FileNotFoundError(
                f"The directory {self.to_clean_path} does not exist."
            )

        self.base_path = os.path.dirname(self.log_path)
        self._check_for_base_dir()

    def run(self, by_date=False, only_directories=False, recursive=False, depth=None):
        if by_date:
            self.clean_by_date(recursive, depth)
        elif only_directories:
            self.organize_directories(recursive, depth)
        else:
            self.organize_files(depth)

    def clean_by_date(self, recursive=False, depth=None):
        self._add_to_log("Organizing files by date...")
        self._organize_by_date(self.to_clean_path, recursive, depth, current_depth=0)
        self._add_to_log("Done!")

    def _organize_by_date(self, folder_path, recursive, depth, current_depth):
        if depth is not None and current_depth > depth:
            return
        for item in os.listdir(folder_path):
            item_path = os.path.join(folder_path, item)
            if os.path.isdir(item_path):
                if recursive:
                    self._organize_by_date(
                        item_path, recursive, depth, current_depth + 1
                    )
            else:
                self._move_to_by_date(item, item_path)

    def clean_by_date_in_folder(self, folder_path, depth, current_depth):
        if depth is not None and current_depth > depth:
            return
        for item in os.listdir(folder_path):
            item_path = os.path.join(folder_path, item)
            if os.path.isdir(item_path):
                self.clean_by_date_in_folder(item_path, depth, current_depth + 1)
            else:
                self._move_to_by_date(item, item_path)

    def _move_to_by_date(self, item, item_path):
        file_mod_time = os.path.getmtime(item_path)
        file_mod_date = datetime.fromtimestamp(file_mod_time)
        year_folder = os.path.join(self.to_clean_path, str(file_mod_date.year))
        if not os.path.exists(year_folder):
            os.makedirs(year_folder)
        new_path = os.path.join(year_folder, item)
        shutil.move(item_path, new_path)
        self._add_to_log(f"Moving {item} to {year_folder}.")

    def organize_directories(self, recursive=False, depth=None):
        self._add_to_log("Organizing directories...")
        self._organize_directories(
            self.to_clean_path, recursive, depth, current_depth=0
        )

    def _organize_directories(self, folder_path, recursive, depth, current_depth):
        if depth is not None and current_depth > depth:
            return
        for item in os.listdir(folder_path):
            item_path = os.path.join(folder_path, item)
            if os.path.isdir(item_path):
                if recursive:
                    self._organize_directories(
                        item_path, recursive, depth, current_depth + 1
                    )
                else:
                    self._move_directory(item, item_path)

    def _move_directory(self, item, item_path):
        type_folder = os.path.join(self.to_clean_path, "Directories", item)
        if not os.path.exists(type_folder):
            os.makedirs(type_folder)
        new_path = os.path.join(type_folder, item)
        shutil.move(item_path, new_path)
        self._add_to_log(f"Moving directory {item} to {type_folder}.")

    def organize_files(self, depth=None):
        self._add_to_log("Organizing files by type...")
        self._organize_files(self.to_clean_path, depth, current_depth=0)
        self._add_to_log("Done!")

    def _organize_files(self, folder_path, depth, current_depth):
        if depth is not None and current_depth > depth:
            return
        for item in os.listdir(folder_path):
            item_path = os.path.join(folder_path, item)
            if os.path.isdir(item_path):
                self._organize_files(item_path, depth, current_depth + 1)
            else:
                self._move_to(item, item_path)

    def _move_to(self, item, item_path, new_path=None):
        old_path = os.path.join(self.to_clean_path, item)
        if not new_path:
            new_path = os.path.join(self.to_clean_path, "Organized", item)
        if not os.path.exists(new_path):
            os.makedirs(new_path)
        shutil.move(old_path, new_path)
        self._add_to_log(f"Moving {item} to {new_path}.")

    def _load_config(self, config_file):
        with open(config_file, "r") as file:
            config = json.load(file)
        self.to_clean_path = os.path.expanduser(config["to_clean_path"])
        self.log_path = os.path.join(self.to_clean_path, config["log_path"])
        self.by_date = config["by_date"]
        self.only_directories = config["only_directories"]
        self.recursive = config["recursive"]
        self.depth = config["depth"]
        self._add_to_log("Config Loaded.")

    def _check_for_base_dir(self):
        if not os.path.exists(self.base_path):
            os.mkdir(self.base_path)
            self._add_to_log(f"Base directory {self.base_path} created")

    def _add_to_log(self, info):
        formatted_time = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
        info_with_date = info + " - " + formatted_time + "\n"
        with open(self.log_path, "a") as file:
            file.write(info_with_date)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Organize your folder contents.")
    parser.add_argument(
        "-p",
        "--path",
        default="~/Downloads",
        help="The directory path to organize. Defaults to ~/Downloads.",
    )
    parser.add_argument(
        "-c",
        "--config",
        help="Optional configuration file (JSON format) to customize the behavior.",
    )
    parser.add_argument(
        "-d",
        "--date",
        action="store_true",
        help="Organize files by their modification date.",
    )
    parser.add_argument(
        "-D",
        "--directories",
        action="store_true",
        help="Only organize directories (not files).",
    )
    parser.add_argument(
        "-r",
        "--recursive",
        action="store_true",
        help="Organize subdirectories recursively.",
    )
    parser.add_argument(
        "--depth",
        type=int,
        default=None,
        help="Limit the depth of subfolders to organize. E.g., --depth 2 limits to 2 levels of subfolders.",
    )
    args = parser.parse_args()

    organizer = CleanFolder(to_clean_path=args.path, config_file=args.config)
    organizer.run(
        by_date=organizer.by_date,
        only_directories=organizer.only_directories,
        recursive=organizer.recursive,
        depth=organizer.depth,
    )
