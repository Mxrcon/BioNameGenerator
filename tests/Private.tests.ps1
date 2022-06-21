BeforeAll {
      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot
      }
      $privatePath="BioNameGenerator/Private"

    Import-Module $projectRoot/$privatePath/GetAminoacid.psm1
    Import-Module $projectRoot/$privatePath/GetNucleicAcid.psm1
    Import-Module $projectRoot/$privatePath/GetBacterialGenera.psm1

}

Describe 'Test Private Functions' {
    It 'Generate a random Aminoacid' {
        Get-Aminoacid | Should -BeOfType String
    }

    It 'Generate a random Nucleic Acid' {
        Get-NucleicAcid | Should -BeOfType String
    }

    It 'Generate a random Bacterial Genera'{
	Get-BacterialGenera | Should -BeOfType String
    }

}
