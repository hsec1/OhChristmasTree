$sleep_time = .25
function set_spacing($spacing,$even_or_odd,$newline){
    if($even){
        sleep($sleep_time);
        if (-not $newline){            
            Write-Host $spacing -NoNewline -BackgroundColor Red ;
        }
        else{
            sleep($sleep_time);
            Write-Host $spacing -BackgroundColor Red;
        }
    }
    else{
    sleep($sleep_time);
    if (-not $newline){
            Write-Host $spacing -NoNewline -BackgroundColor Green;
        }
        else{
            Write-Host $spacing -BackgroundColor Green;
        }
    }
}

function slow_write($string_item,$color){
    foreach($char in $string_item)
    {
        Write-Host $char -NoNewline -BackgroundColor $color;
    
    }

}

#Branches
#$size = [Int16] (Read-Host -Prompt "Enter the size of the tree (Must be amultiple of 4 and greater than 4)");
$size = 20
$act_sz = $size*2;
for ($i =0; $i -lt $size; $i++){
    $stars = "*"*($i+1)*2;
    $spacing = " "*($size-$i);
    $even = $i%2 -gt 0;
    set_spacing $spacing $even $false;
    for($k = 0; $k -lt $stars.Length; $k++){
        if($k%2 -gt 0){
            sleep($sleep_time);
            Write-Host $stars[$k] -ForegroundColor green -NoNewline;
        }
        else{
            sleep($sleep_time);
            Write-Host $stars[$k] -ForegroundColor red -NoNewline};
        }
    set_spacing $spacing $even $true;
    }
#Base
for ($j =0; $j -lt $size/4; $j++){
    $spacing = [int](($act_sz/4)+($act_sz/8)+1);
    $spaced = " "*$spacing;
    $stars = "*"*([int]($act_sz/4));
    $even = $j%2 -gt 0;
    set_spacing $spaced $even $false;
    for($l = 0; $l -lt $stars.Length;$l++){
        if($l%2 -gt 0){
            sleep($sleep_time);
            Write-Host $stars[$l] -ForegroundColor green -NoNewline;
        }
        else{
            sleep($sleep_time);
            Write-Host $stars[$l] -ForegroundColor red -NoNewline};
        }
    set_spacing $spaced $even $true;
    }
$first = " "*($size+1);
$second = " "*($size+1);

Write-Host $first -BackgroundColor Red -NoNewline;
Write-Host $second -BackgroundColor Green;

Read-Host -Prompt "Press Enter to continue";
