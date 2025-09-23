# Image Asset Guidelines

This document provides guidelines for managing images in your academic website.

## Directory Structure

```
assets/img/
├── prof_pic.png              # Profile photo (circular crop recommended)
├── hero.png                  # Hero image for homepage and Open Graph
├── publication_preview/       # Thumbnails for publications
├── readme_preview/           # Repository preview images
├── projects/                 # Project-specific images (create this folder)
│   ├── osm-sidewalkreator.jpg
│   ├── opensidewalkmap.jpg
│   ├── accessibility-research.jpg
│   ├── mobile-mapping.jpg
│   ├── cartography.jpg
│   └── opensource.jpg
└── research/                 # Research diagrams and figures (create this folder)
    ├── methodology-flow.png
    ├── study-area-map.png
    └── results-comparison.png
```

## Image Specifications

### Profile Photo (`prof_pic.png`)
- **Format**: PNG with transparent background preferred
- **Size**: 400x400px minimum (square aspect ratio)
- **Style**: Professional academic photo
- **Usage**: About page, profile card, Open Graph meta

### Hero Image (`hero.png`)
- **Format**: PNG or high-quality JPG
- **Size**: 1200x630px (Open Graph optimal)
- **Content**: Abstract representation of your research or professional workspace
- **Usage**: Homepage header, social media previews

### Project Images
Each project should have a representative image:
- **Format**: JPG or PNG
- **Size**: 800x600px minimum (4:3 aspect ratio)
- **Content**: Screenshots, diagrams, or conceptual illustrations
- **Naming**: Use project slug (e.g., `osm-sidewalkreator.jpg`)

### Publication Previews
- **Format**: PNG preferred for diagrams
- **Size**: 400x300px (4:3 aspect ratio)
- **Content**: Key figures, results visualizations, or methodology diagrams
- **Location**: `assets/img/publication_preview/`

## Current Image Status

✅ **Available:**
- Profile photo (`prof_pic.png`)
- Hero image (`hero.png`)
- Template images (1.jpg through 12.jpg)

🔄 **Needed for Projects:**
- OSM SidewalKreator screenshot or logo
- OpenSidewalkMap platform screenshot
- Research methodology diagram
- Mobile mapping equipment photo
- Cartographic work samples
- Open source contribution graphics

## Image Optimization

Before adding images:

1. **Compress images** using tools like:
   - [TinyPNG](https://tinypng.com/) for PNG files
   - [ImageOptim](https://imageoptim.com/) for multiple formats
   - [Squoosh](https://squoosh.app/) for advanced optimization

2. **Generate responsive versions** (Jekyll will handle this automatically if imagemagick is enabled)

3. **Add alt text** in all image references for accessibility

## Usage in Markdown

### Project pages:
```markdown
---
img: assets/img/projects/osm-sidewalkreator.jpg
---
```

### Inline images:
```liquid
{% include figure.liquid 
   path="assets/img/research/methodology-flow.png" 
   title="Research methodology flowchart" 
   class="img-fluid rounded z-depth-1" %}
```

### Image galleries:
```html
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/screenshot1.jpg" title="Interface overview" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/screenshot2.jpg" title="Data processing" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
```

## Accessibility Considerations

- Always include meaningful `alt` text
- Use descriptive filenames
- Ensure sufficient color contrast in diagrams
- Provide text alternatives for complex diagrams
- Test with screen readers when possible

## Copyright and Attribution

- Use only images you own or have permission to use
- For research figures, ensure they're your original work
- Credit collaborators when appropriate
- Consider licensing (CC-BY recommended for academic work)

## Next Steps

1. Create `assets/img/projects/` directory
2. Replace template project images with actual screenshots
3. Add research diagrams and methodology figures
4. Update project front matter with correct image paths
5. Test responsive image generation