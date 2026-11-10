# Portfolio Component Reference Guide

This document outlines the correct YAML data schemas and variables for all portfolio block types (`_data/portfolio/[project].yml`).

---

## 1. Image Block (`type: "image"`)
Renders a standalone full-width or centered container image with automatic art-directed mobile matching and fallback support.

- type: "image"
- name: "project-folder/image-name"          # Base asset name (without extension)
- mobile_name: "project-folder/custom-mobile"    # Optional: only if mobile needs a different file
- alt: "Description of the image for accessibility"
- caption: "Optional caption text shown below the image"
- full_width: true                               # true for edge-to-edge, false for boxed container

---

## 2. Image-Text Block (`type: "image-text"`)
Renders a side-by-side layout supporting either an MP4/WebM video loop or a responsive image alongside markdown text.

# Option A: With an Image
- type: "image-text"
- name: "project-folder/feature-image"          # Uses 'name' or 'image_name'
- image_position: "left"                        # "left" or "right"
- title: "Section Heading"
- text: "Markdown-supported body text explaining the feature."

# Option B: With a Video
- type: "image-text"
- image_position: "right"
- video_mp4: "/images/project-folder/animation.mp4"
- video_webm: "/images/project-folder/animation.webm"
- title: "Animated Demonstration"
- text: "Markdown-supported body text."

---

## 3. Media Grid Block (`type: "media-grid"`)
Renders a 2-column responsive grid of images that stack on mobile devices.

- type: "media-grid"
- tight: false                                  # true for tight gutters (g-2), false for standard spacing
- full_width: false                             # true for edge-to-edge container
- items:
  - name: "project-folder/grid-item-1"
    alt: "Description of first grid image"
    caption: "Optional caption for item 1"
  - name: "project-folder/grid-item-2"
    alt: "Description of second grid image"
    caption: "Optional caption for item 2"

---

## 4. Text Block (`type: "text-block"`)
Renders a standard centered text container for narratives or sub-headings.

- type: "text-block"
- title: "Optional Heading"
- text: "Markdown-supported paragraph or description text."

---

## 5. Text Details Block (`type: "text-details"`)
Renders structured multi-column details or specifications.

- type: "text-details"
- title: "Key Takeaways"
- text: "Markdown-supported breakdown details."

---

## Image Naming Rules & Conventions
1. Desktop Default: Store your high-resolution desktop master asset as `[name].jpg` (or `.png`).
2. Automatic Mobile Fallback: The site automatically checks for `[name]-mobile.jpg` on screens under `768px`. If the `-mobile` file is missing, JavaScript and HTML fall back smoothly to the desktop version automatically.
3. Cloudflare CDN: Production environments automatically optimize files through Cloudflare's edge workers (`/cdn-cgi/image/`).