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
    Import-Module $projectRoot/$privatePath/GetBacterialSpecie.psm1
    Import-Module $projectRoot/$privatePath/GetMetalOrAlloy.psm1
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

    It 'Generate a random Bacterial Specie'{
    Get-BacterialSpecie | Should -BeOfType String
    }

    It 'Generate a random Metal or Alloy'{
    Get-MetalOrAlloy | Should -BeOfType String
    }

}
