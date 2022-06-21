function Get-MetalOrAlloy{
    param([parameter(Mandatory)][String]$DatabasePath)

    $Table = Invoke-SqliteQuery -Database $DatabasePath -Query "SELECT MetalsAndAlloys FROM MetalsOrAlloys ORDER BY RANDOM() LIMIT 1"
    $MetalOrAlloy = $Table.MetalsAndAlloys
    return $MetalOrAlloy
}
