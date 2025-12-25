# PowerShell Script to Help Download Images for Satya Tent House
# Run this script to get image download links

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  SATYA TENT HOUSE - Image Downloader" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "This script will open image search pages in your browser." -ForegroundColor Green
Write-Host "Download the images you like and save them to the correct folders." -ForegroundColor Green
Write-Host ""

$choice = Read-Host "Press ENTER to open image download links, or 'Q' to quit"

if ($choice -eq 'Q' -or $choice -eq 'q') {
    Write-Host "Exiting..." -ForegroundColor Yellow
    exit
}

Write-Host ""
Write-Host "Opening image search pages..." -ForegroundColor Cyan
Write-Host ""

# Open Unsplash searches (Free, no attribution required)
Write-Host "[1/8] Opening Wedding Tent images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/wedding-tent"
Start-Sleep -Seconds 2

Write-Host "[2/8] Opening Catering Buffet images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/catering-buffet"
Start-Sleep -Seconds 2

Write-Host "[3/8] Opening Flower Decoration images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/flower-decoration-event"
Start-Sleep -Seconds 2

Write-Host "[4/8] Opening Event Stage images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/event-stage"
Start-Sleep -Seconds 2

Write-Host "[5/8] Opening Corporate Event images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/corporate-event"
Start-Sleep -Seconds 2

Write-Host "[6/8] Opening Indian Wedding images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/indian-wedding"
Start-Sleep -Seconds 2

Write-Host "[7/8] Opening Outdoor Wedding images..." -ForegroundColor Yellow
Start-Process "https://unsplash.com/s/photos/outdoor-wedding"
Start-Sleep -Seconds 2

Write-Host "[8/8] Opening Pexels (Alternative source)..." -ForegroundColor Yellow
Start-Process "https://www.pexels.com/search/wedding%20tent/"
Start-Sleep -Seconds 1

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  DOWNLOAD INSTRUCTIONS" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Click on images you like" -ForegroundColor White
Write-Host "2. Click 'Download' button (Free!)" -ForegroundColor White
Write-Host "3. Save images to your Downloads folder" -ForegroundColor White
Write-Host "4. Follow the naming guide below:" -ForegroundColor White
Write-Host ""

Write-Host "GALLERY IMAGES (Save to: images\gallery\)" -ForegroundColor Green
Write-Host "  - wedding-tent-1.jpg" -ForegroundColor Gray
Write-Host "  - wedding-tent-2.jpg" -ForegroundColor Gray
Write-Host "  - catering-1.jpg" -ForegroundColor Gray
Write-Host "  - decoration-1.jpg" -ForegroundColor Gray
Write-Host "  - stage-1.jpg" -ForegroundColor Gray
Write-Host "  - corporate-1.jpg" -ForegroundColor Gray
Write-Host ""

Write-Host "SERVICE IMAGES (Save to: images\services\)" -ForegroundColor Green
Write-Host "  - tent-house.jpg" -ForegroundColor Gray
Write-Host "  - catering.jpg" -ForegroundColor Gray
Write-Host "  - decoration.jpg" -ForegroundColor Gray
Write-Host ""

Write-Host "ABOUT IMAGE (Save to: images\)" -ForegroundColor Green
Write-Host "  - about-tent.jpg" -ForegroundColor Gray
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "After downloading, copy images to folders above!" -ForegroundColor Yellow
Write-Host "The website will auto-refresh with your images." -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$openFolder = Read-Host "Open images folder now? (Y/N)"
if ($openFolder -eq 'Y' -or $openFolder -eq 'y') {
    Start-Process "explorer.exe" -ArgumentList "images"
    Write-Host "Images folder opened!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Happy downloading! 🎉" -ForegroundColor Magenta
Write-Host "Press any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

