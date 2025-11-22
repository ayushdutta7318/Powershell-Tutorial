# Arrays in powershell:

$arr = @("Ayush", 55, "Hello world");

$arr[0];

# $arr[2] = "new data";

$arr += "new data";

$arr;
$arr[3];

# Q. create empty array and add elements:

$a = @();

$a += "A";
$a += "B";
$a += "C";
$a += "D";
$a += "E";

$a;

# properties and method:

$arr.Count;
$arr.Length;

Get-Member -InputObject $arr;

$arr.IsFixedSize;
$arr.Contains("Ayush");

# ARRAY LIST:

$arrList = New-Object -TypeName System.Collections.ArrayList;

$arrList;

Get-Member -InputObject $arrList;

$arrList.Add("first");
$arrList.Add("second");
$arrList.Add("third") | Out-Null; #will not show index bcz of out-null

$arrList;
$arrList.Contains("first");

# $arrList.clear();
$arrList;