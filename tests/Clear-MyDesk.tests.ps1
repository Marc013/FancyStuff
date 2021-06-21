$ModuleName = 'LazyGuy'
$ModulePath = Join-Path -Path $PSScriptRoot -ChildPath "..\modules\$ModuleName"
Remove-Module $ModuleName -ErrorAction SilentlyContinue
Import-Module -Name $ModulePath

Describe 'Function Clear-MyDesk' {
    InModuleScope 'LazyGuy' {
        Context 'with valid parameters' {
            It 'should call mock Write-Host exactly two times' {
                Mock -CommandName Write-Host -MockWith { return $null }
                Mock -CommandName Start-Sleep -MockWith { return $null }

                Clear-MyDesk

                Assert-MockCalled -CommandName Write-Host -Times 2 -Exactly -Scope it
            }
        }
    }
}