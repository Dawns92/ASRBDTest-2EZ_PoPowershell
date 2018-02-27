While ($true) {
$input = Read-Host "First number"
do 
{ if ($input1 -notmatch '^\d+$'){
        $input1 = Read-Host "Enter a valid number please"
        }
            } while ($input1 -notmatch '^\d+$')
    $input1 = [int]$input1

echo "+==================+"
echo " [/] : div          "
echo " [+] : plus         "
echo " [-] : sub          "
echo " [*] : multi        "
echo " [%] : modulo       "
echo "+==================+"

[string]$op = Read-Host "opration"
$input2 = Read-Host "second number"
do { 
    if ($input2 -notmatch '^\d+$') {
    $input2 = Read-Host "Entre a valide numb"
    }
} While ($input2 -notmatch '^d+$')

$input2 = [int]$input2
Switch ($op) {
"*" {$res =  $input1 * $input2 }
"-" {$res =  $input1 - $input2 }
"+" {$res =  $input1 + $input2 }
"/" {$res =  $input1 / $input2 }
"%" {$res =  $input1 % $input2 }
defaut {$res = "error"}
}
Write-Host "`nResult >> $res `n`a"
}

