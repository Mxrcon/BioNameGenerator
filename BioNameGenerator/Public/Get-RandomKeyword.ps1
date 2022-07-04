Function Get-RandomKeyword {
    <#
    .SYNOPSIS
        This functions handles the request for random Keyword based using the function "Get-KeywordFromDatabase"
    .DESCRIPTION
        Returns a random Keyword from one of the following dictionaries: ["28kAdj",
	         "5kColors","Aminoacids","Animals","Books",
                 "Brazilian","Colors","Comp","Compounds","Elements",
                 "Fields","Generas","Lab","Metals","NF-Adj",
                 "NF-Names","Nobel","Nucleic","RPG","Species"]
    .EXAMPLE
        PS> Get-RandomKeyword -Dicitionary Nobel
        Returns a random Nobel winner surname
    .PARAMETER Dictionary
        Specifies wich Dictiory use for finding random words
	Options:
	DictName     Description
        - 28kAdj     - 28.000 Adjectives
        - 5kColors   - 5.000 Color names
        - Aminoacids - Aminoacids names
        - Animals    - Animals names
        - Books      - Important Biological Books
        - Brazilian  - Important Brazilian Scientists
        - Colors     - HTML5 Named Colors
        - Comp       - Computation related Keyworks
        - Compounds  - Chemical compounds name-parts
        - Elements   - Periodic table elements
        - Fields     - Fields Medal Laureates
        - Generas    - Bacterial Generas
        - Lab        - Laboratory related keywords
        - Metals     - Metals and Alloys names
        - NF-Adj     - Adjective List from Nextflow run ID
        - NF-Names   - Important Scientists from Newxtflow run ID
        - Nobel      - Nobel Laureates
        - Nucleic    - Nucleic Acid Bases
        - RPG        - Role Playing Games related Keywords
        - Species    - Bacterial Species
    #>
    [OutputType([string])]
    [CmdletBinding()]
    param (
        [Parameter()]
    [ValidateSet("28kAdj","5kColors","Aminoacids","Animals",
    "Books","Brazilian","Colors","Comp","Compounds","Elements",
    "Fields","Generas","Lab","Metals","NF-Adj",
    "NF-Names","Nobel","Nucleic","RPG","Species")]
        [string]$Dictionary = "Aminoacids"
    )
    switch ($Dictionary){
     "28kAdj"      {$Field = "Adjective"       ; $Name= "28kAdjectives"        }
     "5kColors"    {$Field = "ColorName"       ; $Name= "5kColors"             }
     "Aminoacids"  {$Field = "AminoacidName"   ; $Name= "Aminoacids"           }
     "Animals"     {$Field = "AnimalName"      ; $Name= "Animals"              }
     "Books"       {$Field = "BookName"        ; $Name= "BiologicalBooks"      }
     "Brazilian"   {$Field = "LastName"        ; $Name= "BrazilianScientists"  }
     "Colors"      {$Field = "ColorName"       ; $Name= "Colors"               }
     "Comp"        {$Field = "Keyword"         ; $Name= "ComputationKeywords"  }
     "Compounds"   {$Field = "CompoundName"    ; $Name= "ChemicalCompounds"    }
     "Elements"    {$Field = "ElementName"     ; $Name= "PeriodicTableElements"}
     "Fields"      {$Field = "LastName"        ; $Name= "FieldsWinners"        }
     "Generas"     {$Field = "GeneraName"      ; $Name= "BacterialGeneras"     }
     "Lab"         {$Field = "Keyword"         ; $Name= "LaboratoryKeywords"   }
     "Metals"      {$Field = "ElementName"     ; $Name= "MetalsAndAlloys"      }
     "NF-Adj"      {$Field = "Adjective"       ; $Name= "NF-Adjectives"        }
     "NF-Names"    {$Field = "LastName"        ; $Name= "NF-Names"             }
     "Nobel"       {$Field = "LastName"        ; $Name= "NobelLaureates"       }
     "Nucleic"     {$Field = "NucleicAcidName" ; $Name= "NucleicAcids"         }
     "RPG"         {$Field = "Keyword"         ; $Name= "RPGKeywords"          }
     "Species"     {$Field = "SpecieName"      ; $Name= "BacterialSpecies"     }
     }

      $ProjectPath = Join-Path -Path (Split-Path -Path (Split-Path -Path $PSScriptRoot -Parent) -Parent) -ChildPath 'BioNameGenerator'

      # Import Modules
      Import-Module -Name (Join-Path -Path $ProjectPath `
            -ChildPath (Join-Path -Path 'Private' `
            -ChildPath 'GetKeywordFromDatabase.psm1'))

      $DictionariesPath= "$ProjectPath/Databases/Dictionaries.db"

      Get-KeywordFromDatabase -Database $DictionariesPath -TableField $Field -TableName $Name
}

