# PipeLine:

$a = Get-Service;

$a.Length;
$a.GetType();

$b = Get-Service | Select-Object -Last 10;

$b;

$c = Get-Service | Select-Object -Last 10 | Select-Object status, name;

$c;

$a | Export-Csv .\test.csv -NoTypeInformation

Write-Host "----------------------------";


# check status of object
$a | Where-Object{$_.Status -eq "Running"} | Select-Object -First 10 | Format-Table;

# group object
$a | Group-Object Name, Status | Select-Object -First 10 | Format-Table;


# measure object
$a | Measure-Object;

Measure-Object -InputObject $a;

# compare object

$p = Get-Content .\t1.txt
$q = Get-Content .\t2.txt

Compare-Object -ReferenceObject $p -DifferenceObject $q -IncludeEqual;

# to check entries in an object

$d = Import-Csv .\organizations-100.csv;

$d | Select-Object -First 10 | Select-Object DisplayName, Website | Format-Table;

$d | Select-Object -First 10 |Select-Object Website, @{l="DisplayName"; e={$_.name}} | Format-Table

$d | Select-Object -First 10 |Select-Object Website, @{l="DisplayName"; e={$_.name}} | Export-Csv -Path .\ayush.csv -NoTypeInformation;