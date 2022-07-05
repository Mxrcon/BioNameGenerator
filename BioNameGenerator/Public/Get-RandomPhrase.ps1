Function Get-RandomPhrase {
    <#
    .SYNOPSIS
        This functions handles the request for random Keyword using the function "Get-KeywordFromDatabase"
    .DESCRIPTION
        Returns one or more random generated words separated by a delimiter
    .EXAMPLE
        PS> Get-RandomPhrase -Start Metals -Middle Nobel -End Species -Delimiter "-"
        
	Flevorium-Koshiba-antibiotica
    .PARAMETER Start
        Specifies the dictionary to be used for the first word, can be one of the following dicitionaries or None
        
	["28kAdj","5kColors","Aminoacids","Animals","Books",
        "Brazilian","Colors","Comp","Compounds","Elements",
        "Fields","Generas","Lab","Metals","NF-Adj",
        "NF-Names","Nobel","Nucleic","RPG","Species"]

	Default: Aminoacids
    .PARAMETER Middle
        Specifies the dictionary to be used for the middle word, can be one of the following dicitionaries or None

	["28kAdj","5kColors","Aminoacids","Animals","Books",
        "Brazilian","Colors","Comp","Compounds","Elements",
        "Fields","Generas","Lab","Metals","NF-Adj",
        "NF-Names","Nobel","Nucleic","RPG","Species"]

	Default: None
    .PARAMETER End
        Specifies the dictionary to be used for the last word, can be one of the following dicitionaries or None

	["28kAdj","5kColors","Aminoacids","Animals","Books",
        "Brazilian","Colors","Comp","Compounds","Elements",
        "Fields","Generas","Lab","Metals","NF-Adj",
        "NF-Names","Nobel","Nucleic","RPG","Species"]

	Default: Generas
    .PARAMETER Delimiter
    	Specifies wich delimiter to be used between each word generated, can be any string.

	Default: "_"
    #>
    [OutputType([string])]
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateSet("28kAdj","5kColors","Aminoacids","Animals","Books",
                 "Brazilian","Colors","Comp","Compounds","Elements",
                     "Fields","Generas","Lab","Metals","NF-Adj",
                     "NF-Names","Nobel","Nucleic","RPG","Species", "None")]
        [string]$Start = "Aminoacids",

    [Parameter()]
        [ValidateSet("28kAdj","5kColors","Aminoacids","Animals","Books",
                 "Brazilian","Colors","Comp","Compounds","Elements",
                     "Fields","Generas","Lab","Metals","NF-Adj",
                     "NF-Names","Nobel","Nucleic","RPG","Species","None")]
        [string]$Middle = "None",

    [Parameter()]
        [ValidateSet("28kAdj","5kColors","Aminoacids","Animals","Books",
                 "Brazilian","Colors","Comp","Compounds","Elements",
                     "Fields","Generas","Lab","Metals","NF-Adj",
                     "NF-Names","Nobel","Nucleic","RPG","Species", "None")]
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
