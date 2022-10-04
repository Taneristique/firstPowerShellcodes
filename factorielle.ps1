$decide="yes"
do{
    $number=Read-host -prompt "Please provide an integer to calculate its factorielle" 
    function factorielle{   
        Param([int] $n)
        $l=$n
        while($l -gt 1){
            $n=($l-1)*$n 
            $l-=1
        }
        Write-Host $n 
    }
    factorielle($number)
    $decide=Read-Host -Prompt "would you want to continue?(yes/no)"
    }
 while($decide -eq "yes")