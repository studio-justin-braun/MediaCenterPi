# MediaCenterPi

**MediaCenterPi** is a graphical utility for the **Raspberry Pi 4**, designed to help photographers and videographers transfer files quickly and effortlessly from an SD card or USB stick to an SSD — with minimal interaction.

![Screenshot](screenshot.png)

---

## 🎯 Use Case

Perfect for **event photographers** or **videographers** who need a **fast, touch-friendly workflow** to back up media cards during or after a job — without needing to navigate through file managers.

---

## 💡 Features

- 🖥️ Modern **Tkinter-based GUI** (created with PAGE)
- ⚡ **Plug & copy**: insert a USB/SD card and start transfer with one tap
- 🔁 Automatically detects and mounts connected USB media
- 📂 Files are organized under the current event name and user
- 📦 Built-in progress bar and log output
- 🧑 Supports up to 9 user profiles (customizable)
- 🛠️ Simple configuration via `local.conf`
- 🖲️ Designed for **touchscreen use**, no keyboard/mouse required
- 🔄 Checks for updates on startup and can install them automatically
- ⚙️ Opens `local.conf` in a text editor for easy adjustments
- ⏏️ Buttons to eject disks and restart the app

---

## 🚀 Getting Started

### Requirements

- Raspberry Pi 4 running **Raspberry Pi OS Desktop**
- Touch display (at least 3.5" 320x480 px)
- Python 3.x
- `tkinter`, `ttk`, `shutil`, `subprocess`, `configparser` (usually preinstalled)
- `pyudev` for real-time USB detection *(installed by `install.sh`)*
- `requests` for the update feature *(installed by `install.sh`)*

### Installation

```bash
git clone https://github.com/studio-justin-braun/MediaCenterPi.git
cd MediaCenterPi
./install.sh  # installs dependencies and creates a desktop shortcut
python3 mediacenter.py  # or use the new shortcut
```

---

## ⚙️ Configuration

The configuration is stored in `local.conf` and contains:

- `[GENERAL]` – event title used as the folder name
- `[USERS]` – list of user buttons shown in the UI

A log file named `transfer.log` is created after each transfer.
Use the **Settings** button in the GUI to open `local.conf` in a text editor.

---

## 📁 Folder Structure

```
MediaCenterPi/
├── mediacenter.py
├── local.conf
├── transfer.log
├── screenshot.png
├── README.md
├── .gitignore
```

---

## 🙋‍♂️ Author

**Studio Justin Braun**  
[st-braun.de](https://st-braun.de)  
📧 service@st-braun.de

---

## 📜 License

MIT License
