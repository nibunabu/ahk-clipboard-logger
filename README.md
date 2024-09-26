
# AHK Clipboard Logger

**AHK Clipboard Logger** is an AutoHotkey script that monitors clipboard changes and logs text content to daily log files. Each clipboard entry is stored with a timestamp in a file specific to the current date.

## Features

- Automatically detects and logs clipboard changes.
- Stores logs in daily text files, named in the format `clipboard_log_YYYY-MM-DD.txt`.
- Appends each clipboard entry with a timestamp for better tracking.
- Simple and lightweight solution for clipboard history management.

## How It Works

1. The script listens for clipboard changes using AutoHotkey's `OnClipboardChange()` function.
2. When new text is copied, it appends the clipboard content along with a timestamp to a log file in the `logs` directory.
3. A new log file is created for each day, ensuring logs are organized by date.

## Requirements

- [AutoHotkey](https://www.autohotkey.com/download/) v1.1+ or v2.0+

## Installation

1. Install [AutoHotkey](https://www.autohotkey.com/).
2. Clone this repository or download the script file.

   ```bash
   git clone https://github.com/yourusername/ahk-clipboard-logger.git
   ```

3. Run the script by double-clicking the `.ahk` file, or launch it using an AHK interpreter.

## Usage

Once the script is running, it will automatically log clipboard changes. The logs are saved in the following directory by default (you need to change this):

```
C:\Users\<YourUsername>\ahk-clipboard-logger
```

Each log file is named according to the date in the format `clipboard_log_YYYY-MM-DD.txt`.

### Example Log Entry:

```
20240925T153045 - Copied text goes here.

20240925T160002 - Another piece of copied text.
```

## Customization

- **Log File Location**: You can change the default log file path by modifying the `FilePath` variable in the script.
- **Clipboard Types**: The script currently only logs text (`clipType = 1`). If you wish to extend this to other clipboard types (e.g., images, files), additional checks can be added.

## Contributing

Feel free to submit issues or pull requests if you have suggestions or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
