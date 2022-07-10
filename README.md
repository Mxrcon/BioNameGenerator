# BioNameGenerator

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Mxrcon/BioNameGenerator/main/LICENSE)
[![Testes](https://github.com/Mxrcon/BioNameGenerator/actions/workflows/tests.yaml/badge.svg)](https://github.com/Mxrcon/BioNameGenerator/actions/workflows/tests.yaml)
[![Installation](https://github.com/Mxrcon/BioNameGenerator/actions/workflows/test_installation.yml/badge.svg)](https://github.com/Mxrcon/BioNameGenerator/actions/workflows/test_installation.yml)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/bionamegenerator.svg?label=PowerShell&colorB=085298&logo=powershell&logoColor=white)](https://www.powershellgallery.com/packages/BioNameGenerator)


A small project to generate random repository/release/project names based on Biological names and related topics written in Powershell

## Requirements
### Module Requirements
  - Powershell version => 5.0
  - PSSQLite => 1.1.0

### Tests and Build requirements
  - psake => 4.9.0
  - BuildHelpers => 2.0.16
  - PowerShellBuild => 0.6.1
  - PSScriptAnalyzer => 1.19.1

## Instalation
Simply run this command in any Powershell terminal:

```powershell
Install-Module -Name BioNameGenerator
```

## Usage

This module export 2 main functions: `Get-RandomKeyword` and `Get-RandomPhrase`.

### `Get-RandomKeyword`
Returns a random string from the selected Dictionary

Example:
```powershell
Get-RandomKeyword -Dictionary Nobel

Duve
```


### `Get-RandomPhrase`
Returns a string with 1 or more random keywords concatenaded by a delimiter

Example:
```powershell
Get-RandomPhrase -Start Metals -Middle Nobel -End Species -Delimiter " "

Flevorium Koshiba antibiotica
```

### Dictionaries

`28kAdj` - List of > 28k Adjectives, obtained from: [unpkg](https://unpkg.com/browse/rnd@1.0.9/data/adjectives/28K%20adjectives.txt)

`5kColors` - Colors with a single name from [meodai - Handpicked Colors](https://github.com/meodai/color-names)

`Aminoacids` - List of Aminoacids from IUPAC

`Animals` - Animals filtered with single name and dog breeds

`Books` - Important books for Biology, Biotechnology, Biochemistry grad students

`Brazilian` - List of Brazilian Scientists Joining 2 wikipedia lists: [Cientistas do Brasil](https://pt.wikipedia.org/wiki/Categoria:Cientistas_do_Brasil) and [Lista de pioneiras da Ciência no Brasil](https://pt.wikipedia.org/wiki/Lista_de_pioneiras_da_Ci%C3%AAncia_no_Brasil), and the list of Afiliated, Titulars and Members of Academia de Ciência do Brasil (ACB)

`Colors` - List of named colors from html5

`Comp` - List of words related to computer usage

`Compounds` - List of Compound names joining 3 wikipedia lists:
[Biomolecules](https://en.wikipedia.org/wiki/List_of_biomolecules),
[Organic Salts](https://en.wikipedia.org/wiki/List_of_organic_salts) and [Chemical Formulaes](https://en.wikipedia.org/wiki/Glossary_of_chemical_formulae) and spliting the names by space and sorting the unique words.

`Elements` - List of Elements from Periodic Table

`Fields` - List of Fields Medal Laureates

`Generas` - List of Bacterial Generas obtained from  manipulating the output of this NCBI search string `"Bacteria[SubTree] AND species[Rank] NOT uncultured[prop] AND ( "above species level"[prop] OR specified[prop]) "`
 
`Lab` - List of Equipaments and words related to laboratory work

`Metals` - Periodic table metals and wikipedia page about [named alloys](https://en.wikipedia.org/wiki/List_of_named_alloys)

`NF-Adj` - List of Adjectives used by [Nextflow](https://www.nextflow.io/)

`NF-Names` - List of Names used by [Nextflow](https://www.nextflow.io/)

`Nobel` - List of Nobel Laureates obtained from `nobelprize.org` API

`Nucleic` - Nucleic Acids (RNA and DNA)

`RPG` - List of Keywords related to Role-Playing-Games Universe

`Species` - List of Bacterial Species obtained from  manipulating the output of this NCBI search string `"Bacteria[SubTree] AND species[Rank] NOT uncultured[prop] AND ("above species level "[prop] OR specified[prop]) "`

## Contributing

Contributions are Welcome!! Please feel free to create Issues or Pull requests using our templates, 
but please check our [Contributing Guide](https://github.com/Mxrcon/BioNameGenerator/blob/main/.github/CONTRIBUTING.md) and also our Issues and Pull-Request Templates.


