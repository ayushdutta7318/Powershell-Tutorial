# HashTable: stores data in key value pairs:

$hashTable = @{
    name = "Ayush Dutta";
    location = "Indore";
}

$hashTable;


Get-Member -InputObject $hashTable;

# access memeber:

$hashTable["name"];

$hashTable.Keys;
$hashTable.Values;

# change values:

$hashTable.name = "ramesh dutta";
$hashTable

# add new key: if key name is same as an existing one leads to error.
$hashTable.Add("job","Systems Engineer");
$hashTable;
Write-Host "-------------------------------"
$hashTable.GetEnumerator();

# create custom table:

$b = [PSCustomObject]@{
    ServiceName = "Test Service";
    Status = "Running";
}

$b

$c = Get-Service | Group-Object Status -AsHashTable -AsString;

$c
$c.Stopped.Count;
$c.Running.Count;
