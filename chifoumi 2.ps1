<#JEU du chiffoumi#>
echo "------------Jeu du Chiffoumi------------"
echo "Tu joue à Chiffoumi contre l'ordinateur  "
echo "Taper un chiffre pour choisir son action "
echo "On joue en 3 parties                     "
echo " (1) Pierre                              "
echo " (2) Feuille                             "
echo " (3) Ciseau                              "
echo "-----------------------------------------"
#Variables du jeu
$items = @("Pierre", "Papier", "Ciseaux")
$joueur = ""
$Score = 0
$ScoreUser = 0
$ScoreIA = 0
#Inscrution de la boucle
while ( ($ScoreUser -lt 3 ) -or ($ScoreIA -lt 3 ) ) 
{    	
    Write-Host("[Score : Joureur "+ $ScoreUser +" - AI " + $ScoreIA +"] Choisissez votre action :")
	Write-Host ("1) Pierre`n2) Papier`n3) Ciseaux`n")
 
	while($joueur -eq "") {
        $joueur = Read-Host("Votre choix : ")
		    if(($joueur -eq "1") -or ($joueur -eq "2") -or ($joueur -eq "3")){
                # Utilisateur chiant
                Write-Host $items[$joueur]
                $joueur = "$joueur"
                    }
                    else { Write-Host("Veuillez entrer 1, 2 ou bien 3.")
                            $joueur = Read-Host("Votre choix : ")
                    } 
                        
            }
        
#inti IA
$rand = Get-Random -Maximum 3 -Minimum 0
$IA = $rand
$items[$rand]  #	1, 2, 3. Pierre, papier, ciseaux.
	# Comparaison des résultats

# Pierre 
if (($joueur -eq 1) -and ($IA -eq 1)) # égalité
            {$Score = 0}
		elseif($IA -eq 2)
			  {$Score = -1}
              # perdu
		else {$Score = 1}
			# gagné
			
# Papier		
       if(($joueur -eq 2) -and ($IA -eq 1))		   
		        {$Score = 1}
		        elseif($IA -eq 2)
			    {$Score = 0}
		        else
			    {$Score = -1}
# Ciseaux	  
                 if($IA -eq 1) {$Score = -1}			
		            elseif($IA -eq 2)
			        {$Score = 1}
                    else
			        {$Score = 0 }

 
	$message = ""		# Servira à afficher la victoire ou la défaite
 
	if($Score -lt 0){
        Write-Host ($message = "Vous avez perdu ! ")
		$ScoreUser = -1; $ScoreIA = +1}		
	elseif($Score -eq 0)
		{
            Write-Host ($message = "Égalité ! ")}
	else
		{Write-Host ($message = "Victoire ! ")
		 $ScoreUser = $ScoreUser+1; $ScoreIA = $ScoreIA-1}
 
	$message = ("Jeu : Joureur "+ ($items[$joueur]) +" VS AI "+ ($items[$IA]) +"")
	Write-Host("...")
	sleep(Get-Random(2,5))
	Write-Host("$message, `n")
            $joueur = "" 
}
#/fin
 
if($ScoreUser -gt $ScoreIA){
	Write-Host("GG MGL the King blood in yours veines !")
}
else
	{Write-Host("SHAME ON YOU !")
 
Write-Host("`nSCORES :`n------`nTOI : " + $ScoreUser +".`nIA : " + $ScoreIA + ".")
}