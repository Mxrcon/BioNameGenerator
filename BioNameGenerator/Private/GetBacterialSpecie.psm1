function Get-BacterialSpecie{
    param([parameter(Mandatory)][String]$DatabasePath)

    $Table = Invoke-SqliteQuery -Database $DatabasePath -Query "SELECT BacterialSpecies FROM BacterialSpecies ORDER BY RANDOM() LIMIT 1"
    $BacterialSpecie = $Table.BacterialSpecie
    return $BacterialSpecie
}
