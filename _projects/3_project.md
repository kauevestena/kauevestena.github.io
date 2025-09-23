---
layout: page
title: Accessibility Mapping Research
description: PhD research on using open data for inclusive urban mobility mapping
img: assets/img/accessibility-research.jpg
importance: 3
category: research
related_publications: true
---

My **PhD research in Geodetic Sciences** at the Federal University of Paraná focuses on developing methodologies for accessibility mapping using open data sources and collaborative cartography approaches. This research addresses the critical need for comprehensive, up-to-date accessibility information to support inclusive urban planning and navigation.

## Research Objectives

The primary goal is to establish systematic approaches for creating and maintaining detailed pedestrian accessibility datasets that can inform urban planning decisions and support accessible navigation applications. The research investigates how open data principles and crowdsourced mapping can democratize access to accessibility information.

### Key Research Questions

- How can open data sources be effectively integrated for comprehensive accessibility mapping?
- What methodologies best support scalable, community-driven accessibility data collection?
- How can we ensure data quality and consistency in crowdsourced accessibility mapping?
- What are the most effective approaches for keeping accessibility data current and accurate?

## Methodological Framework

### Multi-Source Data Integration
The research develops frameworks for combining diverse data sources:
- **Remote sensing data** for initial infrastructure detection
- **Mobile mapping systems** for detailed attribute collection
- **Crowdsourced contributions** through OpenStreetMap and specialized platforms
- **Official datasets** from municipal and transportation authorities

### Quality Assurance Protocols
Establishing robust validation methods:
- **Automated topology validation** for geometric consistency
- **Attribute completeness checks** ensuring comprehensive documentation
- **Community review processes** for local knowledge validation
- **Temporal quality monitoring** to track data currency

## Technical Contributions

### Open-Source Tool Development
Creating accessible tools for the research community:
- **OSM SidewalKreator QGIS plugin** for efficient sidewalk mapping
- **Data validation algorithms** for quality assurance
- **Visualization platforms** for accessibility data exploration
- **API frameworks** for data sharing and integration

### Methodological Innovations
- **Hybrid mapping approaches** combining automated and manual techniques
- **Scalable crowdsourcing protocols** for community engagement
- **Data fusion methodologies** for multi-source integration
- **Temporal modeling** for tracking infrastructure changes

## Case Studies and Applications

### Urban Accessibility Assessments
Applying research methodologies in real-world contexts:
- **Curitiba, Brazil** - Comprehensive sidewalk network mapping
- **University campus accessibility** - Detailed pedestrian route analysis
- **Public transit integration** - Connecting pedestrian and transit networks
- **Historic district mapping** - Accessibility in heritage preservation areas

### Collaborative Mapping Projects
Engaging communities in accessibility data creation:
- **Municipal partnership projects** with local government agencies
- **Disability advocacy collaboration** ensuring user-centered design
- **Student engagement initiatives** through academic mapping projects
- **International cooperation** with accessibility mapping researchers

## Research Impact

### Academic Contributions
- **Peer-reviewed publications** on accessibility mapping methodologies
- **Conference presentations** at geodetic sciences and GIS venues
- **Collaborative research** with international accessibility mapping initiatives
- **Methodological frameworks** adopted by other research groups

### Practical Applications
- **Municipal planning support** through detailed accessibility datasets
- **Navigation application enhancement** with comprehensive pedestrian data
- **Policy development assistance** using evidence-based accessibility analysis
- **Community empowerment** through accessible mapping tools

## Future Research Directions

### Technology Integration
- **Machine learning applications** for automated accessibility feature detection
- **IoT sensor integration** for real-time accessibility monitoring
- **Augmented reality interfaces** for field data collection
- **Blockchain approaches** for decentralized data validation

### Methodological Development
- **Dynamic accessibility modeling** accounting for temporal variations
- **Multi-modal integration** connecting different transportation networks
- **Personalized accessibility metrics** adapting to individual user needs
- **Global standardization efforts** for international data compatibility

---

*This research contributes to the growing field of accessibility mapping and inclusive urban design, providing both theoretical frameworks and practical tools for creating more accessible cities.*

Every project has a beautiful feature showcase page.
It's easy to include images in a flexible 3-column grid format.
Make your photos 1/3, 2/3, or full width.

To give your project a background in the portfolio page, just add the img tag to the front matter like so:

    ---
    layout: page
    title: project
    description: a project with a background image
    img: /assets/img/12.jpg
    ---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Caption photos easily. On the left, a road goes through a tunnel. Middle, leaves artistically fall in a hipster photoshoot. Right, in another hipster photoshoot, a lumberjack grasps a handful of pine needles.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    This image can also have a caption. It's like magic.
</div>

You can also put regular text between your rows of images.
Say you wanted to write a little bit about your project before you posted the rest of the images.
You describe how you toiled, sweated, _bled_ for your project, and then... you reveal its glory in the next row of images.

<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    You can also have artistically styled 2/3 + 1/3 images, like these.
</div>

The code is simple.
Just wrap your images with `<div class="col-sm">` and place them inside `<div class="row">` (read more about the <a href="https://getbootstrap.com/docs/4.4/layout/grid/">Bootstrap Grid</a> system).
To make images responsive, add `img-fluid` class to each; for rounded corners and shadows use `rounded` and `z-depth-1` classes.
Here's the code for the last row of images above:

{% raw %}

```html
<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm-4 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
```

{% endraw %}
