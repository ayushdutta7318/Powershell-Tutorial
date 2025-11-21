# Script block: 

'''
{
lines of code
}
'''

'''
{
    Write-Host "this is a script block";
    Get-Service -Name AnyDesk;
}
'''

Invoke-Command -ScriptBlock {
    Write-Host "this is a script block";
    Get-Service -Name AnyDesk;
}

Write-Host "-------------------------------------"

$sb = Invoke-Command -ScriptBlock {
    Write-Host "I am a script block";
    Get-Service -Name Dhcp;
}

$sb;

# aliter:

Write-Host "script block 3----------"
$sb1 = {
    Write-Host "i am script block 3."
    Get-Service -Name HvHost;
}

$sb1.Invoke();

# example of script block practically: pipeline
Get-Service | Where-Object { $_.Status -eq "Running" };

Write-Host "--------------FUNCTIONS-----------------"

# Functions:

function Show-Text {
    Write-Host "This is a simple function";
    
}

Show-Text;

function Show-Text ($message, $service) {
    Write-Host "I am a function with a $message" -ForegroundColor Red
    ;
    Get-Service -Name $service;
}

Show-Text -message "hello world" -service "AnyDesk";


function showTxt {
    param (
        
        $message = "default message",
    
        $service = "BITS"
    )
    Write-Host "I am an alternate function with $message" -ForegroundColor Red;
    Get-Service -Name $service;
}

showTxt -message "good morning" -service 'AnyDesk';


function showTxt {
    param (
        [Parameter(Mandatory)]
        $message = "default message",
        [Parameter(Mandatory)]
        $service = "BITS"
    )
    Write-Host "I am an alternate function with $message" -ForegroundColor Red;
    Get-Service -Name $service;
}

showTxt; #it will ask for the input in terminal

# Scope:

$z = 123;

$z;

function w{
    $z = 456;
    Write-Host $z;
}

w;