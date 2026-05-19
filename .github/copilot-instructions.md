# Site Architecture & Optimization Standards

## 1. Modularization Rules

- Never duplicate layout structures (grids, cards, heroes). Extract repetitive code blocks into parametric `{% include %}` files.
- Keep structural HTML files lean. Content and imagery configurations must live in YAML data files (`_data/`) or Page Front Matter.

## 2. Page Weight Reduction

- Eliminate framework layout bloat (e.g., redundant Bootstrap utilities). Use native CSS Grid Level 3 and Container Queries instead.
- Prevent Cumulative Layout Shift (CLS) by applying explicit `aspect-ratio` variables directly to components instead of calculating heights via Liquid loops.
- Conditionally load heavy third-party assets (Vimeo, Lottie, complex fonts) using page-level metadata flags.
