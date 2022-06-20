BeforeAll {
      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot
      }
      Write-Host $projectRoot

    . BioNameGenerator/Private/GetAminoacid.ps1
    . BioNameGenerator/Private/GetNucleicAcid.ps1


}

Describe 'Test Private Functions' {
    It 'Generate a random Aminoacid' {
        Get-Aminoacid | Should -BeOfType String
    }

    It 'Generate a random Nucleic Acid' {
        Get-NucleicAcid | Should -BeOfType String
    }

}
