import argparse
import json
import os
import shutil
from datetime import datetime


class DownloadOrganizer:
    def __init__(self, download_path, config_file=None):
        if config_file:
            self._load_config(config_file)
        else:
            self.download_path = os.path.expanduser(download_path)
            self.log_path = os.path.join(
                self.download_path, "DownloadOrganizer", "activity_log.txt"
            )
            self.extensions = {
                "images": [".jpg", ".jpeg", ".png", ".gif", ".bmp"],
                "archives": [".zip", ".rar", ".tar", ".gz", ".7z"],
            }
            self.subfolders = {"images": "Images", "archives": "Archives"}

        if not os.path.exists(self.download_path):
            raise FileNotFoundError(
                f"The directory {self.download_path} does not exist."
            )

        self.base_path = os.path.dirname(self.log_path)
        self.image_folder = os.path.join(self.base_path, self.subfolders["images"])
        self.archive_folder = os.path.join(self.base_path, self.subfolders["archives"])
        self._check_for_dirs()

    def run(self):
        self._add_to_log("Organizing files...")
        for item in os.listdir(self.download_path):
            if self._is_type(item, self.extensions["images"]):
                self._move_to(item, self.image_folder)
            elif self._is_type(item, self.extensions["archives"]):
                self._move_to(item, self.archive_folder)
        self._add_to_log("Done!")

    def _load_config(self, config_file):
        with open(config_file, "r") as file:
            config = json.load(file)
        self.download_path = os.path.expanduser(config["download_path"])
        self.log_path = os.path.join(self.download_path, config["log_path"])
        self.extensions = config["extensions"]
        self.subfolders = config["organize_subfolders"]
        self._add_to_log("Config Loaded.")

    def _move_to(self, item, new_path):
        old_path = os.path.join(self.download_folder, item)
        new_path = os.path.join(new_path, item)
        shutil.move(old_path, new_path)
        self._add_to_log(f"Moving {item} from {old_path} to {new_path}.")

    def _is_type(self, item, extensions):
        return any(item.lower().endswith(ext) for ext in extensions)

    def _check_for_dirs(self):
        for path in [self.base_path, self.image_folder, self.archive_folder]:
            if not os.path.exists(path):
                self._add_to_log(f"Creating directory {path}.")
                os.mkdir(path)

    def _add_to_log(self, info):
        formatted_time = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
        info_with_date = info + " - " + formatted_time + "\n"
        with open(self.log_path, "a") as file:
            file.write(info_with_date)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Organize your downloads folder.")
    parser.add_argument(
        "-p",
        "--path",
        default="~/Downloads",
        help="The download directory path to organize. Defaults to ~/Downloads.",
    )
    parser.add_argument(
        "-c",
        "--config",
        help="Optional configuration file (JSON format) to customize the behavior.",
    )
    args = parser.parse_args()
    organizer = DownloadOrganizer(download_path=args.path, config_file=args.config)
    organizer.run()
