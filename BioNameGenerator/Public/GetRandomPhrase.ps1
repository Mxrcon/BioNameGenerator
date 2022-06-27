Function Get-RandomPhrase {
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
	[ValidateSet("Aminoacids","Nucleic","Generas","Species","Metals","Colors","Comp","Fields","Nobel","Elements","28kAdj","Animals","Books","NF-Adj","NF-Names","RPG",'None')]
        [string]$Start = "Aminoacids",
    [Parameter()]
	[ValidateSet("Aminoacids","Nucleic","Generas","Species","Metals","Colors","Comp","Fields","Nobel","Elements","28kAdj","Animals","Books","NF-Adj","NF-Names","RPG",'None')]
        [string]$Middle = "None",
    [Parameter()]
	[ValidateSet("Aminoacids","Nucleic","Generas","Species","Metals","Colors","Comp","Fields","Nobel","Elements","28kAdj","Animals","Books","NF-Adj","NF-Names","RPG",'None')]
        [string]$End = "Generas",
    [Parameter()]
    [string]$Delimiter = "_")

      $Phrase=@()
      $Structure= @($Start,$Middle,$End)
      foreach($Item in $Structure){
        if($Item -ne "None"){
          $Phrase+=$(Get-RandomKeyword $Item)
        }
      }

      return $Phrase -join $Delimiter
}
