const fs = require('fs');
const path = require('path');

// Configuration
const SITE_ROOT = '/Users/kieran/Documents/GitHub';
const IMAGE_DIR = path.join(SITE_ROOT, 'images');

// 1. Find all HTML files
function findHTMLFiles(dir) {
  return fs.readdirSync(dir, { withFileTypes: true }).flatMap(dirent => {
    const fullPath = path.join(dir, dirent.name);
    return dirent.isDirectory() && !dirent.name.startsWith('.')
      ? findHTMLFiles(fullPath)
      : dirent.name.endsWith('.html')
        ? [fullPath]
        : [];
  });
}

// 2. Process each file
function processFile(filePath) {
  let html = fs.readFileSync(filePath, 'utf8');

  // Handle all image cases
  html = html.replace(
    /<(picture\b[^>]*>[\s\S]*?<\/picture>|<\s*img\b[^>]+>)/gi,
    (match) => {
      // Skip already fully processed images
      if (/<source[^>]+type="image\/avif"/i.test(match)) {
        return match;
      }

      // Case 1: Existing <picture> with responsive sources
      if (match.startsWith('<picture')) {
        return match.replace(
          /<source\b([^>]*)srcset="([^"]+\.(jpg|jpeg|png|webp))"([^>]*)>/gi,
          (sourceMatch, preAttr, src, ext, postAttr) => {
            const baseSrc = src.replace(/\.(jpg|jpeg|png|webp)$/i, '');
            return `
<source${preAttr}srcset="${baseSrc}.avif"${postAttr.replace('type="image/webp"', 'type="image/avif"')}>
<source${preAttr}srcset="${baseSrc}.webp"${postAttr.replace('type="image/jpe?g"', 'type="image/webp"')}>
${sourceMatch}
            `.trim();
          }
        );
      }

      // Case 2: Simple <img> tag
      const imgMatch = match.match(/<img\b([^>]*)src="([^"]+\.(jpg|jpeg|png))"([^>]*)>/i);
      if (imgMatch) {
        const [, preAttr, src, ext, postAttr] = imgMatch;
        const baseSrc = src.replace(/\.(jpg|jpeg|png)$/i, '');
        return `
<picture>
  <source srcset="${baseSrc}.avif" type="image/avif">
  <source srcset="${baseSrc}.webp" type="image/webp">
  <img${preAttr}src="${src}"${postAttr}>
</picture>
        `.trim();
      }

      return match;
    }
  );

  fs.writeFileSync(filePath, html);
  console.log(`✅ Updated: ${path.relative(SITE_ROOT, filePath)}`);
}

// 3. Execute
findHTMLFiles(SITE_ROOT).forEach(processFile);
console.log('✨ All images optimized with AVIF → WebP → JPG/PNG fallbacks!');