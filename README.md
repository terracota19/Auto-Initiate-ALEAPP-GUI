# My DFIR Toolkit: Automated ALEAPP Launcher & Setup

---

Welcome to the **My DFIR Toolkit** repository! This project is designed to simplify and streamline a crucial part of your digital forensics workflow, specifically focusing on the powerful **Android Logs Events And Protobuf Parser (ALEAPP)**.

Forget the hassle of manual setups and dependency checks. This toolkit aims to get you up and running with ALEAPP quickly and efficiently, ensuring you can focus on the analysis, not the configuration.

---

## What's Inside?

At the core of this toolkit is a **smart batch script** (`Auto-run-ALEAPP.bat`) engineered for convenience. This script performs several vital actions automatically:

* **Effortless Navigation:** It intelligently locates your ALEAPP installation, so you don't have to manually navigate through command prompts.
* **Automated Dependency Management:** The script ensures all necessary **Python libraries** required by ALEAPP are installed. If they're missing, it fetches them; if they're already there, it gracefully moves on. This means a consistent and reliable environment every time.
* **Direct GUI Launch:** Once everything is in place, it seamlessly launches the **ALEAPP Graphical User Interface (GUI)**, getting you straight into your analysis.

This automation saves you time and reduces potential setup errors, making ALEAPP more accessible than ever.

---

## Getting Started

To utilize this toolkit, simply:

1.  **Clone this repository** to your desired location on your Windows machine.
2.  **Ensure you have ALEAPP itself** (the core Python files like `aleappGUI.py` and `requirements.txt`) placed directly within the same folder as this project's batch script (`Auto-run-ALEAPP.bat`).
3.  **Double-click** the batch script (`Auto-run-ALEAPP.bat`). The script will handle the rest!

---

## Important Considerations

For the batch script to function correctly and for ALEAPP to run smoothly, please keep the following in mind:

* **Python Requirement:** This toolkit and ALEAPP are built on Python. You **must have Python 3.9 or newer** installed on your system. Critically, ensure that Python is correctly added to your system's **PATH environment variable** during installation. If not, the script won't be able to find the Python executable.
* **Script Placement is Key:** The batch script relies on a relative path to find ALEAPP's core files. Therefore, it **must reside in the exact same directory** as `aleappGUI.py` and `requirements.txt`. Moving the script outside of this folder will prevent it from working as intended.
* **Administrator Privileges (Optional):** While not always necessary, if you encounter permission errors during the dependency installation phase, try running the batch script **as an administrator**.

---

This project simplifies the setup of a powerful DFIR tool, allowing you to quickly get to the heart of your forensic investigations.

Feel free to explore, contribute, or adapt this toolkit to further enhance your forensic workflow!
