$ModuleName = 'LazyGuy'
$ModulePath = Join-Path -Path $PSScriptRoot -ChildPath "..\modules\$ModuleName"
Remove-Module $ModuleName -ErrorAction SilentlyContinue
Import-Module -Name $ModulePath

Describe 'Function Get-Coffee' {
    InModuleScope 'LazyGuy' {
        Context 'with valid parameters' {
            It 'should call mock Write-Host exactly three times' {
                Mock -CommandName Write-Host -MockWith { return $null }
                Mock -CommandName Start-Sleep -MockWith { return $null }

                Get-Coffee

                Assert-MockCalled -CommandName Write-Host -Times 3 -Exactly -Scope it
            }
        }
    }
}