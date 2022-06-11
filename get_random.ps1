# get random line from file
$file = Get-Content "dictionaries/aminoacids.txt"
$file[$(Get-Random -Maximum $file.count)]

