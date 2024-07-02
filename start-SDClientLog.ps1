<#
    .SYNOPSIS
        An easy way to view SmartDeploy Client Service Logs, for folks who don't want to keep looking up the log file or typing in the commands.

    .DESCRIPTION
        An easy way to view SmartDeploy Client Service Logs, for folks who don't want to keep looking up the log file or typing in the commands.

    #>


$Title = "============== SmartDeploy Powershell Log Viewer ==============="
$Prompt = "Is this the local computer, or a remote computer?"
$Choices = [System.Management.Automation.Host.ChoiceDescription[]] @("&Remote", "&Local")
$Default = 0

$Choice = $host.UI.PromptForChoice($Title, $Prompt, $Choices, $Default)

Switch($Choice) {
    0 {
            $Computer = Read-Host -Prompt "What is the computer name?"
            get-content "\\$Computer\c$\program files\smartdeploy\clientservice\sdclientservice.log" -tail 50 -Wait
    }
    1 {
            get-content "C:\Program Files\SmartDeploy\ClientService\SDClientService.log" -tail 50 -Wait

        }
}

