# DMDownloader

**DMDownloader** is a free and open-source Windows desktop application for downloading video and audio from YouTube and Dailymotion and converting it to high-quality audio files using `yt-dlp` and `ffmpeg`.  
It features a lightweight GUI built with `wxPython`, automatic clipboard detection, native system notifications, and persistent download history with context menu options.

---

## 🔧 Features

- 🎞️ Paste YouTube URLs manually or from clipboard
- 🔊 Extract audio and convert to a different formats (128, 192 and 320kbps)** using `yt-dlp` and `ffmpeg`
- 🔔 Native Windows notifications using `wx.adv.NotificationMessage`
- 📋 Persistent download history with:
  - Right-click context menu (`Show in Folder`, `Delete`)
  - Delete support via keyboard (`Delete` key)
  - Enter or NumPad Enter, opens selected item in Windows Explorer
- 📁 Automatically saves files to:
`C:\Users\yourusername\Downloads\DMDownloader`
- Multi lingual support

## 📚DMDownloader documentation

- [About DMDownloader](docs/index.md)
- [Installation](docs/installation.md)
- [Using DMDownloader](docs/usage.md)
- [Frequently asked questions](docs/faq.md)
- [DMDownloader localization](docs/localization.md)
- [Contribution to DMDownloader](docs/contributing.md)

## 🚀 Building from source
> Python 3.10+ is recommended.

### 1. Clone the repository:

```bash
git clone https://github.com/DarkoMilosevic86/DMDownloader.git
cd DMDownloader
```

### 2. Build the source code

- To build the source code, make sure Python 3.10+ is installed on your computer.
- Run `build.bat` to build the DMDownloader from source.
#### Important note!
To build the DMDownloader from the source code, you must download ffmpeg binary and copy the file ffmpeg.exe to the main repository folder.
Also, you have to download and install the Inno Setup to build the installer from the following link:
[https://jrsoftware.org/isdl.php](https://jrsoftware.org/isdl.php)
After you download and install the Inno Setup, you have to download translations file for SerbianLatin and Croatian language because they aren't included in the installation and should to be downloaded separately.
You can download translation files from [here](https://jrsoftware.org/files/istrans/)
## 🤝 Contributing

We welcome contributions to DM Downloader! If you'd like to report a bug, suggest a feature, or contribute code, please check out our [CONTRIBUTING.md](CONTRIBUTING.md) guide.