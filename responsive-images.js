const fs = require('fs');
const path = require('path');

// Config
const HTML_DIR = path.join(__dirname, 'docs');

function optimizeImageTags(html) {
  return html.replace(
    /<picture>([\s\S]*?)<\/picture>/gi,
    (pictureTag) => {
      // 1. Preserve existing media queries
      const sources = pictureTag.match(/<source[^>]+>/gi) || [];
      
      // 2. Generate AVIF/WebP variants for each source
      const optimizedSources = sources.flatMap(source => {
        const srcMatch = source.match(/srcset="([^"]+)"/i);
        if (!srcMatch) return [source];
        
        const src = srcMatch[1].split(' ')[0]; // Get URL without descriptor (e.g., "375w")
        const baseSrc = src.replace(/\.(png|jpg|jpeg)$/i, '');
        const ext = src.split('.').pop();
        
        return [
          source.replace(/srcset="[^"]+"/i, `srcset="${baseSrc}.avif"`).replace(/type="[^"]+"/i, 'type="image/avif"'),
          source.replace(/srcset="[^"]+"/i, `srcset="${baseSrc}.webp"`).replace(/type="[^"]+"/i, 'type="image/webp"'),
          source // Original
        ];
      });

      // 3. Optimize the fallback <img>
      const imgTag = pictureTag.match(/<img[^>]+>/i)[0]
        .replace(/(loading|decoding)=["'][^"']*["']/gi, '')
        + ' loading="lazy" decoding="async"';

      return `<picture>${optimizedSources.join('\n')}\n${imgTag}\n</picture>`;
    }
  );
}

// Process HTML files
function processHTML(filePath) {
  const html = fs.readFileSync(filePath, 'utf8');
  const optimized = optimizeImageTags(html);
  fs.writeFileSync(filePath, optimized);
  console.log(`Optimized: ${filePath}`);
}

// Main execution
fs.readdirSync(HTML_DIR).forEach(file => {
  if (file.endsWith('.html')) {
    processHTML(path.join(HTML_DIR, file));
  }
});
