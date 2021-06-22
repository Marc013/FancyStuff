function New-Calculation {
    <#
    .SYNOPSIS
    Demo function

    .DESCRIPTION
    New-Calculation is a demo function

    .EXAMPLE
    New-Calculation -NumberOne 12 -NumberTwo 3 -Operation  Add

    This command provide the sum of 12 and 3
    #>
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            HelpMessage = 'Provide the first number.')]
        [int]$NumberOne,
        [Parameter(
            Mandatory = $true,
            HelpMessage = 'Provide the second number.')]
        [int]$NumberTwo,
        [Parameter(
            Mandatory = $true,
            HelpMessage = 'Provide the calculation operation.')]
        [ValidateSet('Add', 'Subtract', 'Divide', 'Multiply')]
        [string]$Operation
    )
    switch ($Operation) {
        Add { $NumberOne + $NumberTwo }
        Subtract { $NumberOne - $NumberTwo }
        Divide {
            try {
                $NumberOne / $NumberTwo
            }
            catch [System.DivideByZeroException] {
                Throw 'You cannot divide by zero. Please specify another number.'
            }
            catch {
                throw $Error[0]
            }
        }
        Multiply { $NumberOne * $NumberTwo }
        Default { throw 'Gremlins are attacking!' }
    }
}
