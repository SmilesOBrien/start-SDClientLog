# start-SDClientLog
A PSE (Plain Stupid English) way to view the log file for SmartDeploy's Client Service, without having to remember the Powershell commands

# How to use:
AS A SCRIPT

1. Right-click the .ps1 file and choose "run with powershell."
2. Specify whether the logs are on a remote computer, or the local device, and if remote, enter hostname
4. Read the logs (it will display the last 50 lines, then tail the log file)
5. Press CTRL + C to exit

AS A MODULE

1. Choose the .psm1 instead of the .ps1 file and import it to your PowerShell profile's module's folder
  2. I don't know what I'm doing, so I used the $PSHome folder, created a subfolder for it, and dropped the file there.
3. Call start-sdclientlog in Powershell and use as described above

# Why is this a thing
Laziness, mostly. I know the get-content command but am tired of typing it in all the time.
