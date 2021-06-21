function Get-Coffee {
    Assert-HelperFunction

    Write-Host "The butler is making you a fresh cup of coffee. `nPlease be patient for a couple of seconds." -ForegroundColor Magenta
    Start-Sleep -Seconds 2
    Write-Host "Thank you for your patience. `nThe butler will be serving you coffee in a bit" -ForegroundColor Yellow
    Start-Sleep -Seconds 2
    Write-Host "The butler has served your coffee. `nEnjoy!" -ForegroundColor Green
}