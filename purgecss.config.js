module.exports = {
  content: [
    './*.html',
    './*.md',
    './_layouts/**/*.html',
    './_includes/**/*.html',
    './portfolio/**/*.html',
    './portfolio/**/*.md',
    './_data/**/*.yml'
  ],
  css: ['./assets/css/bootstrap.min.css'],
  output: './assets/css/bootstrap.min.css',
  safelist: [
    'show',
    'collapsing',
    'collapsed',
    'active',
    'fade',
    'dark-mode',
    /^navbar-/,
    /^col-/,
    /^btn-/
  ]
}