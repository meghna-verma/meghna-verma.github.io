Meghna Verma — personal website (GitHub Pages)

Preview the site locally (Jekyll recommended):

1) Using Jekyll (if you have Ruby installed):

	gem install bundler
	bundle install
	bundle exec jekyll serve --livereload

Open http://127.0.0.1:4000

2) Quick static preview (no Jekyll rendering of Liquid):

	cd "C:\Users\verma\meghna-verma.github.io\meghna-verma.github.io"
	python -m http.server 8000

Open http://localhost:8000

Image optimization

To generate optimized profile images (JPG and WebP), run the PowerShell script in the `tools` folder. It requires ImageMagick (`magick`) in PATH and WebP support in your ImageMagick build.

	powershell -ExecutionPolicy Bypass -File .\tools\optimize-images.ps1

This creates the following files in `images/optimized/` (used by the homepage `picture` tag):

- `Verma01_800.jpg`
- `Verma01_400.jpg`
- `Verma01_800.webp` (if supported)
- `Verma01_400.webp` (if supported)

If you prefer to run ImageMagick manually, here are example commands (PowerShell):

	magick convert images/Verma01_github.jpg -resize 800x -strip -interlace Plane -quality 85 images/optimized/Verma01_800.jpg
	magick convert images/Verma01_github.jpg -resize 400x -strip -interlace Plane -quality 80 images/optimized/Verma01_400.jpg
	magick convert images/optimized/Verma01_800.jpg -quality 80 images/optimized/Verma01_800.webp
	magick convert images/optimized/Verma01_400.jpg -quality 75 images/optimized/Verma01_400.webp

If ImageMagick is not available in your environment, you can use online tools or other local image processors to produce 800px and 400px JPG/WebP variants and place them under `images/optimized/`.

Content notes

- Contact: LinkedIn and CV PDF only (no email or phone published).
- The blog preserves older posts found in `_posts/` and includes a new announcement post.
- Recipes are collected under `recipes/` and recipe posts belong in `_posts/` (use category/tags as needed).

