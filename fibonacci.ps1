
function fibonacci{
    Param([int] $n)
    $a=0
    $b=1
    $s=0
    if($n -gt 1){
        do{
          $s=$a+$b
          $ptr=$a 
          $a=$s 
          $b=$ptr
          $n-=1 
        }
        until($n -eq 0)
        Write-Host $s 
    }
    else{
        Write-Host 1 
    }
    }
do{
  
    $parameter= Read-Host -Prompt "Type index of fibonacci element you search for"
    fibonacci($parameter)
    $decide=Read-Host -Prompt "continue(y/n)"
}while($decide -eq "y")