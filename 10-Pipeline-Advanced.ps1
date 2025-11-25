# ADVANCE PIPELINE:

#-----------------------------------------------

# WHERE OBJECT:

Get-Service | Where-Object {$_.Status -eq "Running" -and $_.Name -like "*Win*"};

# Aliter of above

Get-Service -Name "*Win*";

# --------------------------------

# SELECT-OBJECT:

Get-Service | Select-Object Name, Status, ServiceType;

# FOREACH-OBJECT:

Get-Service | Select-Object -First 10 | ForEach-Object {Write-Host "the service name is $($_.DisplayName)"} | Format-Table ;

# aliter:

Write-Host "---------------------------------------------"

Get-Service | Select-Object -First 10 | ForEach-Object {Write-Host "the service name is $($_.DisplayName)"} | Format-Table ;


# lets do it with array

$arr = @("BITS", "WINRM");

$arr |  Get-Service;

# Let retrieve process from an object

$a = @{
    process1="Anydesk";
    process2="Code";

}


$b = $a | Select-Object @{l="Name";e={$_.Values}};
$b
$b | Get-Process | Select-Object -First 3;

# lets create fn for above:

function Show-Process {
    param (
        [Parameter(ValueFromPipeline)]
        [string[]]$computerName="localhost"
        )
    begin{
        Write-Host "Begin block called" -ForegroundColor Green;
    }
    process{
        Write-Host "Computer name is $computerName" -ForegroundColor Red;
    }
    end{
        Write-Host "END" -ForegroundColor Blue;
    }
    
}

@("PC1", "WIN10") | Show-Process;