---
layout: page
title: OSM SidewalKreator
description: QGIS plugin for creating accessible sidewalk networks in OpenStreetMap
img: assets/img/osm-sidewalkreator.jpg
importance: 1
category: work
github: https://github.com/kauevestena/osm_sidewalkreator
related_publications: true
---

**OSM SidewalKreator** is a QGIS plugin I developed to streamline the creation of detailed sidewalk networks in OpenStreetMap. This tool addresses the critical need for accessible pedestrian infrastructure data by providing an intuitive interface for mapping sidewalks, crosswalks, and pedestrian accessibility features.

## Project Overview

The plugin enables urban planners, accessibility advocates, and OpenStreetMap contributors to efficiently create comprehensive pedestrian network data. By automating many aspects of sidewalk digitization and ensuring compliance with OpenStreetMap tagging standards, SidewalKreator significantly reduces the time and expertise required to contribute high-quality accessibility data.

## Key Features

## Key Features

- **Automated Sidewalk Generation**: Creates sidewalk geometries parallel to street networks with customizable offset distances
- **Accessibility Tagging**: Implements comprehensive OpenStreetMap accessibility tags (surface type, width, tactile paving, kerb details)
- **Quality Assurance**: Built-in validation tools to ensure data consistency and OSM compliance
- **Batch Processing**: Handles large datasets efficiently for city-wide mapping projects
- **Integration with QGIS**: Seamless workflow within the familiar QGIS environment

## Technical Implementation

The plugin is built using Python and the QGIS API, leveraging:
- **PyQGIS** for geospatial processing and user interface
- **OSM tagging schemas** for standardized accessibility attributes
- **Geometric algorithms** for automated sidewalk placement and topology validation
- **PostgreSQL/PostGIS** integration for large-scale data management

## Impact and Applications

OSM SidewalKreator has been used in several urban accessibility mapping projects, contributing to:
- **Municipal planning initiatives** for improving pedestrian infrastructure
- **Academic research** on urban accessibility and inclusive mobility
- **Community mapping efforts** led by disability advocacy groups
- **Transportation planning** with focus on pedestrian network connectivity

## Research Context

This tool directly supports my PhD research on accessibility mapping methodologies and serves as a practical implementation of open-source approaches to inclusive urban planning. The plugin demonstrates how technical solutions can democratize access to sophisticated mapping tools, enabling broader community participation in accessibility data creation.

## Future Development

Ongoing development focuses on:
- Enhanced automation using machine learning for sidewalk detection
- Integration with mobile mapping data sources
- Improved user interface for non-technical contributors
- Extended support for additional accessibility features

---

*For more information about OSM SidewalKreator, visit the [GitHub repository](https://github.com/kauevestena/osm_sidewalkreator) or contact me for collaboration opportunities.*
