#Création du Claculatirce#
Clear-host
Write-Host "Vous etes dans une calculatrice vous pouver des chiffres et ces opérateurs logique '/' '+' '=' '-' " -ForegroundColor Green
Write-Host "La premiére valeur numérique" -ForegroundColor Cyan
#action 1 premiere 
[double]$var=$y.substring(0,$y.length-1)
$var = Read-Host
[int]$var4
$y=MiniReg Val
#if conditon 1
if($var -is [int])
{
    echo " $var
    Taper l'opérateur du cacule"
}
elseif ($var -ne [int])
{
    Read-Host "Retaper une valeur en chiffre correcte"
    $var = Write-Host 
}
#action 2 premiere
[string]$var2=$y.substring($y.length-1, 1) 
$var2 = Write-Host
          
            if ($var2 -eq "+"){$var4=($var+$var3)} 
            if ($var2 -eq "-"){$var4=($var-$var3)} 
            if ($var2 -eq "x"){$var4=($var*$var3)} 
            if ($var2 -eq "/"){$var4=($var/$var3)} 
 #action 3 premiere
[double]$var3=$Display = Read-Host
if($var3 -is [int])
{
    echo " $var3
    Taper l'opérateur du cacule"
}
elseif ($var3 -ne [int])
{
    Read-Host "Retaper une valeur en chiffre correcte"
    $var3 = Write-Host 
}
          
            write-host "$var $var2 $var3 = $var4"          
            MiniReg Val "$var4" -s  
            $textBoxDisplay.Text = $var4
