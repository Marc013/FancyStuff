function Clear-MyDesk {
    Assert-HelperFunction

    Write-Host "The butler is cleaning your desk. `nPlease be patient for a couple of seconds." -ForegroundColor Magenta
    Start-Sleep -Seconds 2
    Write-Host "Thank you for your patience. `nThe butler has done your dirty work ;-)" -ForegroundColor Green
}