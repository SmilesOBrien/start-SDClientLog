# start-SDClientLog
A PSE (Plain Stupid English) way to view the log file for SmartDeploy's Client Service, without having to remember the Powershell commands

# How to use:
1. Right-click the script and choose "run with powershell."
2. Specify whether the logs are on a remote computer, or the local device, and if remote, enter hostname
4. Read the logs (it will display the last 50 lines, then tail the log file)
5. Press CTRL + C to exit

# Why is this a thing
Laziness, mostly. I know the get-content command but am tired of typing it in all the time.
