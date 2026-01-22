# Kristi_the_Coder Portfolio

A modern portfolio website built with Jekyll, showcasing creative coding projects, games, and development thoughts.

## Overview

This site is built using Jekyll and hosted on GitHub Pages. It features:

- **Home**: Landing page with featured projects and recent blog posts
- **Projects**: Showcase of current and active projects
- **Archive**: Collection of older projects and experiments
- **Devlog**: Blog for project ideas, development notes, and reflections

## Technology Stack

- **Jekyll**: Static site generator
- **GitHub Pages**: Hosting platform
- **Custom CSS**: Modern, responsive design using CSS Grid and Flexbox
- **Markdown**: Content management

## Local Development

To run this site locally:

1. Install Ruby and Bundler
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Build and serve the site:
   ```bash
   bundle exec jekyll serve
   ```
4. Visit `http://localhost:4000` in your browser

## Adding Blog Posts

Create a new file in the `_posts/` directory with the format:
```
YYYY-MM-DD-title.md
```

Add front matter at the top:
```yaml
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS -0500
author: Kristi
tags: [tag1, tag2]
excerpt: "A brief description of your post"
---
```

Then write your content in Markdown.

## Project Structure

```
.
├── _config.yml           # Jekyll configuration
├── _includes/            # Reusable components
│   ├── footer.html
│   └── navigation.html
├── _layouts/             # Page templates
│   ├── default.html
│   ├── page.html
│   └── post.html
├── _posts/               # Blog posts
├── assets/               # Static assets
│   ├── css/
│   └── images/
├── index.html            # Homepage
├── projects.md           # Projects page
├── archive.md            # Archive page
└── devlog.md             # Blog index page
```

## GitHub Pages Deployment

This site automatically deploys to GitHub Pages when changes are pushed to the main branch. No build step is required as GitHub Pages has built-in Jekyll support.

## License

© 2026 Kristi_the_Coder
