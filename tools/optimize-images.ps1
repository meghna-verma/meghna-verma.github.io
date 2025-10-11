<#
PowerShell script to create optimized images for the profile.
Requires ImageMagick `magick` in PATH.
Generates /images/optimized/Verma01_800.jpg and Verma01_400.jpg
#>

$src = "images/Verma01_github.jpg"
$destDir = "images/optimized"
if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir | Out-Null }

if (-not (Get-Command magick -ErrorAction SilentlyContinue)) {
    Write-Host "ImageMagick (magick) not found in PATH. Install ImageMagick or skip optimization." -ForegroundColor Yellow
    exit 1
}

try {
    # create 800px wide JPG
    magick convert $src -resize 800x -strip -interlace Plane -quality 85 "$destDir/Verma01_800.jpg"
    # create 400px wide JPG
    magick convert $src -resize 400x -strip -interlace Plane -quality 80 "$destDir/Verma01_400.jpg"

    # create WebP versions (if ImageMagick supports webp)
    magick convert "$destDir/Verma01_800.jpg" -quality 80 "$destDir/Verma01_800.webp"
    magick convert "$destDir/Verma01_400.jpg" -quality 75 "$destDir/Verma01_400.webp"

    Write-Host "Optimized JPG and WebP images created in $destDir"
}
catch {
    Write-Host "ImageMagick encountered an error while creating images. Ensure ImageMagick supports WebP and try again." -ForegroundColor Yellow
    exit 1
}
