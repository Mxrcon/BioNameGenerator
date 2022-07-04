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
        Specifies wich Dictiory use for finding random words options: [Aminoacids,Nucleic,Generas,Species,Metals,
    Colors,Comp,Fields,Nobel,Elements,28kAdj,Animals,Books,NF-Adj,NF-Names,RPG]
    #>
    [OutputType([string])]
    [CmdletBinding()]
    param (
        [Parameter()]
    [ValidateSet("Aminoacids","Nucleic","Generas","Species","Metals","Colors","Comp","Fields","Nobel","Elements","28kAdj","Animals","Books","NF-Adj","NF-Names","RPG")]
        [string]$Dictionary = "Aminoacids"
    )
    switch ($Dictionary){
    "Aminoacids"  {$Field = "AminoacidName"   ; $Name= "Aminoacids"           }
    "Nucleic"     {$Field = "NucleicAcidName" ; $Name= "NucleicAcids"         }
    "Generas"     {$Field = "GeneraName"      ; $Name= "BacterialGeneras"     }
    "Species"     {$Field = "SpecieName"      ; $Name= "BacterialSpecies"     }
    "Metals"      {$Field = "ElementName"     ; $Name= "MetalsAndAlloys"      }
    "Colors"      {$Field = "ColorName"       ; $Name= "Colors"               }
    "Comp"        {$Field = "Keyword"         ; $Name= "ComputationKeywords"  }
    "Fields"      {$Field = "LastName"        ; $Name= "FieldsWinners"        }
    "Nobel"       {$Field = "LastName"        ; $Name= "NobelLaureates"       }
    "Elements"    {$Field = "ElementName"     ; $Name= "PeriodicTableElements"}
    "28kAdj"      {$Field = "Adjective"       ; $Name= "28kAdjectives"        }
    "Animals"     {$Field = "AnimalName"      ; $Name= "Animals"              }
    "Books"       {$Field = "BookName"        ; $Name= "BiologicalBooks"      }
    "NF-Adj"      {$Field = "Adjective"       ; $Name= "NF-Adjectives"        }
    "NF-Names"    {$Field = "LastName"        ; $Name= "NF-Names"             }
    "RPG"         {$Field = "Keyword"         ; $Name= "RPGKeywords"          }
    }

      $ProjectPath = Join-Path -Path (Split-Path -Path (Split-Path -Path $PSScriptRoot -Parent) -Parent) -ChildPath 'BioNameGenerator'

      # Import Modules
      Import-Module -Name (Join-Path -Path $ProjectPath `
            -ChildPath (Join-Path -Path 'Private' `
            -ChildPath 'GetKeywordFromDatabase.psm1'))

      $DictionariesPath= "$ProjectPath/Databases/Dictionaries.db"

      Get-KeywordFromDatabase -Database $DictionariesPath -TableField $Field -TableName $Name
}

