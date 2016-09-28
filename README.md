# windows-forcebindip-scripts
Some scripts to launch applications bound to specific network adapters on Windows.

## Setup

1. Make sure you have the Visual Studio 2015 Runtimes (x86 and x64) installed on your system (https://www.microsoft.com/en-us/download/details.aspx?id=48145)
2. Unzip ForceBindIp from https://r1ch.net/projects/forcebindip into the directory of the scripts from this repository
3. Only for non-German Windows versions: Edit the strings in *wireless_lan_ip_refresh.bat* to match your output of *ipconfig /all*
    - Line 4 **Drahtlos-LAN-Adapter Drahtlosnetzwerkverbindung**
    - Line 12 **IPv4-Adresse**
    - Line 18 **(Bevorzugt)**
4. Run *wireless_lan_ip_refresh.bat*, a text file *wireless_lan_ip_current.txt* should appear containing **only** your current wireless lan IPv4 address
5. Edit the paths of the executables of Chrome in *run_chrome_bound_to_wlan.bat* and MS Outlook in *run_outlook_bound_to_wlan.bat* 
6. Create similar *.bat* files for other programs

## Usage

1. Make sure the program you want to launch is not already running
2. Run the corresponding batch file
3. Use the application

## Backdraws of ForceBindIP

- Launching the program with parameters is not possible
- Because of this the other way round (binding *plink.exe* to the wired connection) does not work in our case
- It may however be possible for other use cases. Then this info may be useful:

    http://answers.microsoft.com/en-us/windows/forum/windows_7-networking/windows-7-why-is-the-network-adapter-priority/6554ba7a-4571-440d-b782-34f05b47a06c?auth=1

    Go to <Network and Sharing><Change Adapter Settings>
    Right click your wired and wireless adapters one at a time to change the properties.
    Select IPv4, click <Properties> then click <Advanced>.
    For each one clear the "Automatic metric" check box and assign the metric value manually.
    Set wireless to 1 and wired to 2.
