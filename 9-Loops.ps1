# LOOPS in Powershell:

# FOR LOOP
for ($i = 0; $i -lt 6; $i++) {
    Write-Host "Iternation number: $i" -ForegroundColor Green;
}


# Print table of 2:

for($i=1; $i -lt 11; $i++){
    Write-Host "2 x $i = $(2*$i)";
}

# ----------------------------------------------------

# WHILE LOOP

$a = 1;
while ($a -lt 11) {
    Write-Host "3 x $a = $(3*$a)";
    $a++;
}


# ---------------------------------------

# DO-WHILE LOOP

$b = 10;
do{
Write-Host "Value of b is $b"
$b++;
}while($b -lt 5)

# Do-UNTIL LOOP

$c = 15;
do{
    Write-Host "value of c is $c";
    $c--;
}until($c -lt 10)

# --------------------------------------------

# FOREACH LOOP:

$arr = @(1,2,3,4,5);

foreach ($element in $arr){
    Write-Host "number is $element";
}

# ------------------------------------------------

# break and continue:

$d = @(1,2,3,4,5);

for($i = 0; $i -lt $d.Length; $i++){
    if($i -eq 1){
        break;
    }
    Write-Host "value is $($d[$i])";
}


for($i = 0; $i -lt $d.Length; $i++){
    if($i -eq 1){
        continue;
    }
    Write-Host "value is $($d[$i])";
}