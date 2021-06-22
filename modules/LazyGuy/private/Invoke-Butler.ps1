function Invoke-Butler {
    [string]$Assert = 'Dummy for troubleshooting purposes'

    if ([string]::IsNullOrWhiteSpace($Assert)) {
        throw "`nazcopy not found. `nPlease make sure azcopy is installed and the directory location of the AzCopy executable is added to your system path. `nhttps://docs.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10"
    }

    azcopy $args

    if ($LASTEXITCODE -ne 0) {
        throw 'Execution failed'
    }
}