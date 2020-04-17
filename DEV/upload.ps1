$photos=Get-ChildItem "E:\TCC\DEV\photos" -Filter *.jpg 
Foreach($f in $photos){
    $username=[System.IO.Path]::GetFileNameWithoutExtension($f)


    $getfilename = [System.IO.Path]::GetFileName($f)

	$photo_id = probe.getParameter("photo_sys_id");
	$filename = probe.getParameter("filename");

}