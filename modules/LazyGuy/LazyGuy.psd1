#
# Module manifest for module 'LazyGuy'
#

@{
    # Script module or binary module file associated with this manifest.
    RootModule        = 'LazyGuy.psm1'

    # Version number of this module.
    ModuleVersion     = '0.0.1'

    # ID used to uniquely identify this module
    GUID              = 'f6f0cf48-eeef-4787-b1f3-2425eaf8bb31'

    # Author of this module
    Author            = 'Marc van Gorp'

    # Company or vendor of this module
    CompanyName       = 'Marc van Gorp'

    # Copyright statement for this module
    Copyright         = '(c) 2021 CCC. All rights reserved.'

    # Description of the functionality provided by this module
    Description       = 'Goodness for the real LAZY GUY!'

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
        'New-Calculation'
    )

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()
}