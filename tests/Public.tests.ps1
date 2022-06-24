BeforeAll {
      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot
      }
      $PublicPath="BioNameGenerator/Public"

    Import-Module $ProjectRoot/$PublicPath/"Get-RandomKeyword.psm1"
}

Describe 'Test Public Functions' {
    It 'Test Get-RandomKeyword with Default' {
	Get-RandomKeyword | Should -BeOfType String
    }
}
