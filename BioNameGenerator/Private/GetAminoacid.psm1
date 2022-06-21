function Get-Aminoacid {
    param([parameter(Mandatory)][String]$DatabasePath)

    $Table = Invoke-SqliteQuery -Database $DatabasePath -Query "SELECT * FROM Aminoacids"
    $Aminoacids = $Table.Aminoacids
    return $Aminoacids[$(Get-Random -Maximum $Aminoacids.count)]
}

