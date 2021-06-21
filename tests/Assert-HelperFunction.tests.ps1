$ModuleName = 'LazyGuy'
$ModulePath = Join-Path -Path $PSScriptRoot -ChildPath "..\modules\$ModuleName"
Remove-Module $ModuleName -ErrorAction SilentlyContinue
Import-Module -Name $ModulePath

Describe 'Function Assert-HelperFunction' {
    Context 'asserting function' {
        It 'should call throw default error Execution failed' {
            InModuleScope 'LazyGuy' {
                Set-Variable -Name MissingFunction -Value mock -Scope Script

                # Write-Host "$(Get-Module | Out-String)"

                { Assert-HelperFunction } | Should -Throw "Missing dependent function 'mock'"
            }
        }
    }
}