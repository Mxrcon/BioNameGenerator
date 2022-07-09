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




