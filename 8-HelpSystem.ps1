#HELP SYSTEM:


Get-Help Get-Service -Examples; #no output bcz no info available for get-service.

Get-Help Get-Date;

Get-Help Get-Date -Examples;

Get-Help Get-Service -Detailed;
Get-Help Get-Service -Full;
# Get-Help Get-Service -Online;

# GET-HELP PARAMETER:
Write-Host "-----------GET_HELP WITH PARAMETER----------"
Get-Help Get-Service -Parameter Name;

Get-Help Get-Service -Parameter DisplayName;
Get-Help Get-Service -ShowWindow;

UPDATE HELP FILES

Update-Help; # to  update all

Update-Help -Module Storage; #updates from internet

Save-Help -Module Storage -DestinationPath A:\powershell\update #for no internet

Update-Help -SourcePath A:\powershell\update -Module Storage;

Import-Module Storage;

Get-Command -Module Storage;

Get-Help Set-StorageSetting -ShowWindow;

# CUSTOM HELP CONTENT:

function show-text{
    <#
       .SYNOPSIS
         This is a custom fn to print text on sonsole.
       .Description
       This is a custom fn to print text on sonsole.

       .PARAMETER color
       this accepts a color

       .EXAMPLE 
       show-text
       .EXAMPLE
       show-text -color yellow
       
       .NOTES
       this is a custom fn
    #>
    param([string]$color="RED")
    Write-Host "this is a custom function" -ForeGroundColor $color;
    
}

show-text;
show-text -color "YELLOW";

Get-Help show-text -Full;
Get-Help show-text -Examples;

