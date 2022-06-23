BeforeAll {
      $projectRoot = $ENV:BHProjectPath
      $projectRoot = $ENV:BHProjectPath
      if (-not $projectRoot) {
        $projectRoot = $PSScriptRoot
      }
      $PublicPath="BioNameGenerator/Public"
      $DatabasePath= "BioNameGenerator/Databases/Dictionaries.db"

    Import-Module $ProjectRoot/$PublicPath/"Get-KeywordHandler.psm1"
}

Describe 'Test Public Functions' {
    It 'Test Get-KeywordHandler with Default' {
	Get-KeywordHandler | Should -BeOfType String
    }
}
