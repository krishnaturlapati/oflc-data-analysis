# Script to convert xlsx to utf8 csv
param (
  [string]$soruce_dir = "C:\Users\Turla\Desktop\Projects\oflc\raw_h1b\stg\",
  [string]$destination_dir = "C:\Users\Turla\Desktop\Projects\oflc\raw_h1b\stg\",
  [string]$xlsx_file_name
)

$scriptName = $MyInvocation.MyCommand.Name
$ScriptLogName = "$scriptName.log"
$file_name_tmp = $($filename.Split('.') | Select -Index 0)
$destination_file_name = $($file_name_tmp)+$(".csv")
 

# source https://stackoverflow.com/questions/7834656/create-log-file-in-powershell
Function Write-Log {
    [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$False)]
    [ValidateSet("INFO","WARN","ERROR","FATAL","DEBUG")]
    [String]
    $Level = "INFO",

    [Parameter(Mandatory=$True)]
    [string]
    $Message,

    [Parameter(Mandatory=$True)]
    [string]
    $ScriptLogName,

    [Parameter(Mandatory=$False)]
    [string]
    $Logfile = "D:\applogs\$(gc env:computername)-$($ScriptLogName)-$((Get-Date).toString("yyyyMMdd-HHmmss")).log"
    )

    $Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
    $Line = "TimeStamp:$Stamp, LogLevel:$Level, ScriptName:$ScriptName, Message:$Message"
    If($Logfile) {
        Add-Content $Logfile -Value $Line
    }
    Else {
        Write-Output $Line
    }
}



Import-Module PSExcel
$StartMs = (Get-Date).Minute
try
{
    Import-XLSX $soruce_dir$xlsx_file_name | Export-CSV -NoTypeInformation $destination_dir$destination_file_name -Encoding UTF8
    $EndMs = (Get-Date).Minute
    Write-Host "Conversion took $($EndMs - $StartMs) minutes to complete" 
    Write-Log "INFO" "Conversion completed successfully" $ScriptLogName
    Exit(0)
}
catch
{
    Write-Host "Caught an exception:" -ForegroundColor Red
    Write-Log "ERROR" "Caught an exception:" $ScriptLogName
    Write-Host "Exception Type: $($_.Exception.GetType().FullName)" -ForegroundColor Red
    Write-Log "ERROR" "Exception Type: $($_.Exception.GetType().FullName)" $ScriptLogName
    Write-Host "Exception Message: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "ERROR" "Exception Message: $($_.Exception.Message)" $ScriptLogName
    Write-Host "Conversion failed"
    Write-Log "ERROR" "Conversion failed" $ScriptLogName
    Exit(1)
}


