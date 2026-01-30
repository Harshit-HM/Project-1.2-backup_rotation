# Backup Rotation Shell Script (Linux)
---
## Overview

This project is a **Bash shell script** that performs **directory backup with 5-day rotation**.
It automatically:

* Creates compressed backups of a given source directory
* Stores backups in a specified backup directory
* Retains only the **latest 5 backups**
* Deletes older backups automatically (rotation)

This script is useful for **Linux system administrators and DevOps beginners** to manage disk space and ensure reliable backups.

---

## Objectives

* Automate directory backup using shell scripting
* Implement backup rotation to avoid storage overuse
* Learn real-world Linux scripting practices

---

## Features

* Backup any directory passed as input
* Compressed backup using `zip`
* Timestamp-based backup naming
* Automatic **5-day backup rotation**
* Simple and reusable script design
* Lightweight and fast execution

---

## Technologies Used

* **Operating System:** Linux (Ubuntu / CentOS)
* **Scripting Language:** Bash
* **Utilities:** zip, date, ls, rm
* **Version Control:** Git & GitHub

---

## Project Structure

```
Backup_Rotation_Shell_Scripting/
│
├── Backup_Rotation.sh
├── data/
│   └── (source files for backup)
└── backups/
    └── (generated backup zip files)
```

---

## How to Use

### 1️- Write the Script

```bash
mkdir Backup_Rotation_Shell_Scripting
cd Backup_Rotation_Shell_Scripting
vim Backup_Rotaton.sh
```

### 2️- Make Script Executable

```bash
chmod +x Backup_Rotation.sh
```

### 3️- Run the Script

```bash
./Backup_Rotation.sh <path_to_source_directory> <path_to_backup_directory>
```

### Example

```bash
./Backup_Roation.sh ./data ./backups
```

---

## Backup Rotation Logic

* Script lists backups in **latest-first order**
* Keeps only the **most recent 5 backups**
* Automatically deletes older backup files
* Prevents unnecessary disk space usage

---

## Sample Output

```
Backup generated successfully for 2026-01-12-10-30-15
Performing rotation for 5 days
```

---

## Prerequisites

* Linux system
* `zip` package installed

```bash
sudo apt install zip -y
```

---

## Learning Outcomes

* Bash scripting fundamentals
* Function-based scripting
* Backup automation
* File rotation logic
* Linux command-line utilities

---

## Contribution

Contributions are welcome. Feel free to fork the repository and submit a pull request.

---

## License

This project is open-source and available under the MIT License.

---

## Author

**Harshit**
Linux | DevOps | Cloud Enthusiast
