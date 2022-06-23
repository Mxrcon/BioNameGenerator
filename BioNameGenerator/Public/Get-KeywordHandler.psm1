
Function Get-RandomKeyword {
    <#
    .SYNOPSIS
        This functions handles the request for random Keyword based using the function "Get-KeywordFromDatabase"
    .DESCRIPTION
        Returns a random Keyword from the dictionaries
    .EXAMPLE
        PS> Get-KeywordHandler
        Runs the command
    .PARAMETER Dictionary
        Specifies wich Dictiory use for finding random words [Aminoacids, NucleicAcids, BacterialGeneras,
	BacterialSpecies, MetalsAndAlloys, Colors, ComputationKeywords, FieldsWinners,
	NobelLaureates,PeriodicTableElements]
    #>
    [OutputType([string])]
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]$Dictionary = "Aminoacids"
    )
    switch ($Dictionary){
        "Aminoacids" {$Field ="AminoacidName"; $Name= "Aminoacids"; }
        "NucleicAcid" {}
	"BacterialGeneras" {}
	"BacterialSpecies" {}
	"MetalsAndAlloys" {}
	"Colors" {}
	"ComputationKeywords" {}
	"FieldsWinners" {}
	"NobelLaureates" {}
	"PeriodicTableElements" {}
	}

      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot}
      $privatePath="../Private"
      $DatabasePath= "../Databases/Dictionaries.db"

      Import-Module $ProjectRoot/$privatePath/GetKeywordFromDatabase.psm1
      Get-KeywordFromDatabase -Database $ProjectRoot/$DatabasePath -TableField $Field -TableName $Name
}
