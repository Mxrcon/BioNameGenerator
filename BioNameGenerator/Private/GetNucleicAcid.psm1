function Get-NucleicAcid {
    param([parameter(Mandatory)][String]$DatabasePath)

    $Table = Invoke-SqliteQuery -Database $DatabasePath -Query "SELECT NucleicAcids FROM NucleicAcids ORDER BY RANDOM() LIMIT 1"
    $NucleicAcid = $Table.NucleicAcids

    return $NucleicAcid
}

