$ModuleName = 'LazyGuy'
$ModulePath = Join-Path -Path $PSScriptRoot -ChildPath "..\modules\$ModuleName"
Remove-Module $ModuleName -ErrorAction SilentlyContinue
Import-Module -Name $ModulePath

Describe 'Function New-Beer' {
    InModuleScope 'LazyGuy' {
        Context 'with valid parameters' {
            It 'should call mock Write-Host exactly four times' {
                Mock -CommandName Write-Host -MockWith { return $null }
                Mock -CommandName Start-Sleep -MockWith { return $null }

                New-Beer

                Assert-MockCalled -CommandName Write-Host -Times 4 -Exactly -Scope it
            }
        }
    }
}