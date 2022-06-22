BeforeAll {
      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot
      }
      $privatePath="BioNameGenerator/Private"
      $DatabasePath= "BioNameGenerator/Databases/Dictionaries.db"

    Import-Module $ProjectRoot/$privatePath/GetRandomKeyword.psm1
}

Describe 'Test Private Functions' {
    It 'Generate a random Aminoacid' {
	Get-RandomKeyword $ProjectRoot/$DatabasePath -TableField AminoacidName -TableName Aminoacids 
    }

    It 'Generate a random Nucleic Acid' {
        Get-RandomKeyword -Database $ProjectRoot/$DatabasePath -TableField NucleicAcidName -TableName NucleicAcids
    }

    It 'Generate a random Bacterial Genera'{
	Get-RandomKeyword -Database $ProjectRoot/$DatabasePath -TableField GeneraName -TableName BacterialGeneras
    }

    It 'Generate a random Bacterial Specie'{
	Get-RandomKeyword -Database $ProjectRoot/$DatabasePath -TableField SpecieName -TableName BacterialSpecies
    }

    It 'Generate a random Metal or Alloy'{
	Get-RandomKeyword -Database $ProjectRoot/$DatabasePath -TableField ElementName -TableName MetalsAndAlloys
    }

}
