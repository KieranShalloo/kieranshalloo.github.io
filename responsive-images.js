const fs = require('fs');
const path = require('path');

// Configuration
const SITE_ROOT = '/Users/kieran/Documents/GitHub';
const IMAGE_DIR = path.join(SITE_ROOT, 'images');

// 1. Find all HTML files recursively (excluding hidden directories)
function findHTMLFiles(dir) {
  const files = [];
  const entries = fs.readdirSync(dir, { withFileTypes: true });

  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);

    if (entry.isDirectory() && !entry.name.startsWith('.')) {
      files.push(...findHTMLFiles(fullPath));
    } else if (entry.isFile() && entry.name.endsWith('.html')) {
      files.push(fullPath);
    }
  }

  return files;
}

// 2. Process each HTML file
function processHTML(filePath) {
  try {
    let html = fs.readFileSync(filePath, 'utf8');

    // Update image tags
    html = html.replace(
      /<(img|source)([^>]*)src(set)?="([^"]+\.(jpg|jpeg|png))"([^>]*)>/gi,
      (match, tag, preAttr, isSrcset, src, ext, postAttr) => {
        const baseSrc = src.replace(/\.(jpg|jpeg|png)$/i, '');

        // Handle responsive images
        if (tag === 'source' && match.includes('media=')) {
          const media = match.match(/media="([^"]+)"/i)[1];
          return `
<source media="${media}" srcset="${baseSrc}.avif" type="image/avif">
<source media="${media}" srcset="${baseSrc}.webp" type="image/webp">
${match}
          `.trim();
        }

        // Standard images
        return `
<picture>
  <source srcset="${baseSrc}.avif" type="image/avif">
  <source srcset="${baseSrc}.webp" type="image/webp">
  <img${preAttr}src="${src}" loading="lazy" decoding="async"${postAttr}>
</picture>
        `.trim();
      }
    );

    fs.writeFileSync(filePath, html);
    console.log(`✅ Updated: ${path.relative(SITE_ROOT, filePath)}`);
  } catch (err) {
    console.error(`❌ Error processing ${filePath}:`, err.message);
  }
}

// 3. Main execution
const htmlFiles = findHTMLFiles(SITE_ROOT);
htmlFiles.forEach(processHTML);
console.log(`✨ Processed ${htmlFiles.length} files with AVIF/WebP support!`);