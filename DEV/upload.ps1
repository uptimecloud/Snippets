$photos=Get-ChildItem "E:\TCC\DEV\photos" -Filter *.jpg 
Foreach($f in $photos){
    $username=[System.IO.Path]::GetFileNameWithoutExtension($f)


    $filename = [System.IO.Path]::GetFileName($f)



}