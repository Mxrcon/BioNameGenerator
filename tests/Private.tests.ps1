BeforeAll {
      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot
      }

    . $projectRoot/BioNameGenerator/Private/GetAminoacid.ps1
    . $projectRoot/BioNameGenerator/Private/GetNucleicAcid.ps1


}

Describe 'Test Private Functions' {
    It 'Generate a random Aminoacid' {
        Get-Aminoacid | Should -BeOfType String
    }

    It 'Generate a random Nucleic Acid' {
        Get-NucleicAcid | Should -BeOfType String
    }

}
