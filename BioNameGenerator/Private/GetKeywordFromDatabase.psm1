function Get-KeywordFromDatabase {
    param([parameter(Mandatory)][String]$DatabasePath,
    [parameter(Mandatory)][String]$TableName,
    [parameter(Mandatory)][String]$TableField)


    $SQLiteQuery = "Select $TableField From $TableName ORDER BY RANDOM() LIMIT 1"
    $Table = Invoke-SqliteQuery -Database $DatabasePath -Query $SQLiteQuery

    return $Table.$TableField
}

