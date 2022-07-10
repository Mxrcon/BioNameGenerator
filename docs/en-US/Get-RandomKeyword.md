---
external help file: BioNameGenerator-help.xml
Module Name: BioNameGenerator
online version:
schema: 2.0.0
---

# Get-RandomKeyword

## SYNOPSIS
This functions handles the request for random Keyword based using the function "Get-KeywordFromDatabase"

## SYNTAX

```
Get-RandomKeyword [[-Dictionary] <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a random Keyword from one of the following dictionaries: ["28kAdj",
	         "5kColors","Aminoacids","Animals","Books",
                 "Brazilian","Colors","Comp","Compounds","Elements",
                 "Fields","Generas","Lab","Metals","NF-Adj",
                 "NF-Names","Nobel","Nucleic","RPG","Species"]


## EXAMPLES

### EXAMPLE 1
```powershell
Get-RandomKeyword -Dicitionary Nobel
```

Returns a random Nobel winner

## PARAMETERS

### -Dictionary

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

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: Aminoacid
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).


## OUTPUTS

### System.String
A random string from one of the Dictionaries

## NOTES

## RELATED LINKS
