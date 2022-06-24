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
    It 'Test all Specific Cases' {
        Get-RandomKeyword -Dictionary "Aminoacids" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "NucleicAcid" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Generas" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Species" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Metals" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Colors" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Comp" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Fields" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Nobel" | Should -BeOfType String
        Get-RandomKeyword -Dictionary "Elements" | Should -BeOfType String


    }
}
