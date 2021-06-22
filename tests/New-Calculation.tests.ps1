$ModuleName = 'LazyGuy'
$ModulePath = Join-Path -Path $PSScriptRoot -ChildPath "..\modules\$ModuleName"
Remove-Module $ModuleName -ErrorAction SilentlyContinue
Import-Module -Name $ModulePath

Describe 'Function New-Calculation' {

    Context 'With valid parameters' {

        It 'should return 5 - Add' {
            $sut = New-Calculation -NumberOne 2 -NumberTwo 3 -Operation Add
            $sut | Should -Be 5
        }

        It 'should return 3 - Divide' {
            $sut = New-Calculation -NumberOne 9 -NumberTwo 3 -Operation Divide
            $sut | Should -Be 3
        }

        It 'should return 9 - Multiply' {
            $sut = New-Calculation -NumberOne 3 -NumberTwo 3 -Operation Multiply
            $sut | Should -Be 9
        }

        It 'should return 2 - Subtract' {
            $sut = New-Calculation -NumberOne 5 -NumberTwo 3 -Operation Subtract
            $sut | Should -Be 2
        }
    }

    Context 'With invalid parameters' {

        It "should throw when providing a string for parameter 'NumberOne'" {
            $sut = { New-Calculation -NumberOne one -NumberTwo 2 -Operation Add }
            $sut | Should -Throw "Cannot process argument transformation on parameter 'NumberOne'*"
        }

        It "should throw when providing a string for parameter 'NumberTwo'" {
            $sut = { New-Calculation -NumberOne 1 -NumberTwo two -Operation Add }
            $sut | Should -Throw "Cannot process argument transformation on parameter 'Numbertwo'*"
        }

        It "should throw when providing a wrong input for parameter 'Operation'" {
            $sut = { New-Calculation -NumberOne 1 -NumberTwo 2 -Operation Optellen }
            $sut | Should -Throw "Cannot validate argument on parameter 'Operation'*"
        }
    }
}