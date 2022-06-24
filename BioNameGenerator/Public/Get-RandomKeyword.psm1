
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
$modulePath = Join-Path -Path (Split-Path -Path (Split-Path -Path $PSScriptRoot -Parent) -Parent) -ChildPath 'Private'
$databasePath= Join-Path -Path (Split-Path -Path (Split-Path -Path $PSScriptRoot -Parent) -Parent) -ChildPath 'Databases'
# Import the Modules
Import-Module -Name (Join-Path -Path $modulePath `
	-ChildPath 'GetKeywordFromDatabase.psm1')


      $DictionariesPath= "$databasePath/Dictionaries.db"

      Get-KeywordFromDatabase -Database $DictionariesPath -TableField $Field -TableName $Name
}
