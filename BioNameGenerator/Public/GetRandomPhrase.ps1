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
        [string]$Start = "None",
    [Parameter()]
        [string]$Middle = "Aminoacids",
    [Parameter()]
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
