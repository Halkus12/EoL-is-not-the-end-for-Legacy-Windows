# Multi-Certificate Updater v2.0

🌐 With this utility, you can update your Trusted Root Certification Authorities in just one click. These certificates are essential for modern websites to load properly in your browser and for the modern HTTPS protocol to function correctly.

=---------------------------------------------------------------------------------------------------------------------------------------------------------------=

### 🧐 HOW IT WORKS & WHAT'S INSIDE

This package is built upon the original Microsoft `rootsupd.exe` utility (521 KB), enhanced with a custom `install.cmd` script (the full source code is included right next to the executable in this folder) and the latest genuine `roots.sst` certificate store extracted directly from Windows 11 26H2 via Microsoft's official servers, replacing the outdated `roots.sst`. Everything was compiled and packaged using IExpress 1.0 on Windows XP x86.
**How to use & verify installation**:
1. Run the executable *(IMPORTANT: make sure to run it as Administrator)* and confirm the UAC prompt (on Windows Vista and newer).
2. It may look as though nothing happened — don't worry, the installation runs completely silently in the background!
3. To verify that the certificates were imported successfully:
   3.1. Press `Win + R` on your keyboard, type `certmgr.msc`, and press Enter.
   3.2. In the left pane, expand Trusted Root Certification Authorities and click on Certificates.
   3.3. Look at the list on the right: you will now see brand-new certificates valid up to 2050 (and beyond), and the scrollbar will become much smaller due to the huge number of updated entries!
**What this fixes**:
1. When opening the latest browsers supported on legacy systems — such as Opera 36 — "the Invalid Certificate" error will disappear.
2. In Google Chrome 49, you will no longer see the "Your clock is ahead" (`NET::ERR_CERT_DATE_INVALID`) error.
3. Many desktop apps, installers, and launchers that require an internet connection to reach their servers will stop throwing SSL/connection errors.

=---------------------------------------------------------------------------------------------------------------------------------------------------------------=

### ❗ VirusTotal Check & False Positives (`VirusTotal.png`)

**Why does VirusTotal show 7/71 detections?**:
1. These are classic false positives triggered by automated AI/Machine Learning heuristics (`ML`, `Wacatac.B!ml`). Because this utility is packaged using the legacy Microsoft IExpress (`WEXTRACT.EXE`) from Windows XP and contains an unsigned `.cmd` script that requests UAC elevation, some modern cloud scanners flag it automatically. 
2. Full transparency: The complete source code of `install.cmd` is available right here in this repository so you can inspect every single line yourself!
