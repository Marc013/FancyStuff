function New-Beer {
    Assert-HelperFunction

    Write-Host "The butler is getting you a cold brewski. `nPlease be patient for a couple of seconds." -ForegroundColor Magenta
    Start-Sleep -Seconds 2
    Write-Host "OEPS. `nThe butler droped your beer. . ." -ForegroundColor Red
    Start-Sleep -Seconds 2
    Write-Host 'The butler is getting a new beer!' -ForegroundColor Yellow
    Start-Sleep -Seconds 2
    Write-Host "The butler has served your beer. `nEnjoy! `nJust not TOO MUCH :-P" -ForegroundColor Green
}
