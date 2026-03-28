# Ngmc-project
# Open Source Audit: VLC Media Player
**Student Name:** Ujjawal Rai  
**Registration Number:** 24BAI10329  
**Slot:** B22  
**Course:** Open Source Software Management  

## Project Overview
This repository contains the technical component of my Open Source Audit project. The project focuses on **VLC Media Player**, analyzing its origins at École Centrale Paris, its GPLv2 licensing model, and its modular architecture within the Linux ecosystem.

## Repository Contents
This repository includes five specialized Bash scripts designed to demonstrate Linux administration and automation skills related to the software audit.

| Script Name | Filename | Description |
| :--- | :--- | :--- |
| **System Identity** | `script1_identity.sh` | Reports Distro, Kernel, and User info with FOSS licensing notes. |
| **Package Inspector** | `script2_inspector.sh` | Verifies VLC installation and provides philosophical context. |
| **Disk & Permission Auditor** | `script3_auditor.sh` | Audits permissions and sizes of key VLC and system directories. |
| **Log File Analyzer** | `script4_log_analyzer.sh` | Scans session logs for critical errors using loops. |
| **Manifesto Generator** | `script5_manifesto.sh` | An interactive tool to generate a personalized FOSS manifesto. |

## How to Run the Scripts on Linux

### 1. Clone the Repository
Open your terminal and run:

git clone [https://github.com/](https://github.com/)ujjawalrai-ai/Ngmc-project.git
cd Ngmc-project
### 2. Grant Executable Permissions
Before running, you must give the scripts permission to execute:


chmod +x *.sh

### 3. Execute the Scripts
Run each script using the following commands:

System Report: ./script1_identity.sh

Check VLC: ./script2_inspector.sh

Audit Directories: ./script3_auditor.sh

Analyze Logs: ./script4_log_analyzer.sh

Generate Manifesto: ./script5_manifesto.sh

Dependencies
Operating System: Linux (Ubuntu, Debian, or RHEL preferred).

Interpreter: Bash Shell (/bin/bash).

Core Utilities: grep, awk, du, dpkg (or rpm), and cut.

### Conclusion
This audit demonstrates that VLC is more than a media player; it is a testament to the power of community-driven, transparent development. Through these scripts, I have verified the accessibility and modularity that makes VLC a cornerstone of the FOSS ecosystem. This project confirms that open-source software provides superior auditability and freedom compared to proprietary alternatives.
