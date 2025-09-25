#!/bin/bash

# Development helper script for Kauê's Academic Website
# This script provides shortcuts for common development tasks

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_header() {
    echo -e "${BLUE}=== $1 ===${NC}"
}

# Check if we're in the right directory
if [ ! -f "_config.yml" ]; then
    print_error "This script must be run from the root of the Jekyll site directory."
    exit 1
fi

print_header "Kauê's Academic Website - Development Helper"

case "${1:-help}" in
    "serve"|"dev"|"development")
        print_status "Starting development server..."
        print_warning "Make sure you have run 'bundle install' first"
        bundle exec jekyll serve --livereload --drafts
        ;;
    
    "build")
        print_status "Building site for production..."
        JEKYLL_ENV=production bundle exec jekyll build
        print_status "Site built in _site/ directory"
        ;;
    
    "clean")
        print_status "Cleaning generated files..."
        bundle exec jekyll clean
        rm -rf .sass-cache/
        print_status "Clean complete"
        ;;
    
    "install")
        print_status "Installing dependencies..."
        bundle install
        print_status "Dependencies installed"
        ;;
    
    "update")
        print_status "Updating dependencies..."
        bundle update
        print_status "Dependencies updated"
        ;;
    
    "check")
        print_status "Running site health checks..."
        
        print_status "1. Checking Jekyll configuration..."
        bundle exec jekyll doctor
        
        print_status "2. Validating BibTeX file..."
        python3 validate_bib.py
        
        print_status "3. Building site..."
        JEKYLL_ENV=production bundle exec jekyll build
        
        print_status "All checks completed!"
        ;;
    
    "deploy")
        print_status "Preparing for deployment..."
        print_warning "This will build the site and push to GitHub"
        read -p "Are you sure? (y/N): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            ./scripts/dev.sh clean
            ./scripts/dev.sh build
            git add .
            git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
            git push origin master
            print_status "Deployment initiated!"
        else
            print_status "Deployment cancelled"
        fi
        ;;
    
    "new-post")
        if [ -z "$2" ]; then
            print_error "Please provide a post title: ./scripts/dev.sh new-post \"My Post Title\""
            exit 1
        fi
        
        TITLE="$2"
        SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
        DATE=$(date '+%Y-%m-%d')
        FILENAME="_posts/${DATE}-${SLUG}.md"
        
        print_status "Creating new post: $FILENAME"
        
        cat > "$FILENAME" << EOF
---
layout: post
title: $TITLE
date: $(date '+%Y-%m-%d %H:%M:%S %z')
description: 
tags: research
categories: 
giscus_comments: true
related_posts: false
---

Write your post content here...

EOF
        print_status "Post created: $FILENAME"
        ;;
    
    "new-news")
        if [ -z "$2" ]; then
            print_error "Please provide news content: ./scripts/dev.sh new-news \"News content\""
            exit 1
        fi
        
        CONTENT="$2"
        DATE=$(date '+%Y-%m-%d')
        COUNT=$(ls _news/ | wc -l)
        FILENAME="_news/announcement_$((COUNT + 1)).md"
        
        print_status "Creating news item: $FILENAME"
        
        cat > "$FILENAME" << EOF
---
layout: post
date: $(date '+%Y-%m-%d %H:%M:%S %z')
inline: true
related_posts: false
---

$CONTENT

EOF
        print_status "News item created: $FILENAME"
        ;;
    
    "stats")
        print_header "Repository Statistics"
        
        echo "📄 Pages: $(find _pages -name "*.md" | wc -l)"
        echo "📰 News items: $(ls _news/*.md 2>/dev/null | wc -l)"
        echo "📝 Blog posts: $(ls _posts/*.md 2>/dev/null | wc -l)"
        echo "🔬 Projects: $(ls _projects/*.md 2>/dev/null | wc -l)"
        echo "📚 Publications: $(grep -c "^@" _bibliography/papers.bib 2>/dev/null || echo "0")"
        echo "🖼️  Images: $(find assets/img -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" \) | wc -l)"
        ;;
    
    "help"|*)
        print_header "Available Commands"
        echo ""
        echo "Development:"
        echo "  serve, dev     - Start development server with live reload"
        echo "  build          - Build site for production"
        echo "  clean          - Clean generated files"
        echo ""
        echo "Dependencies:"
        echo "  install        - Install Ruby dependencies"
        echo "  update         - Update Ruby dependencies"
        echo ""
        echo "Quality:"
        echo "  check          - Run all health checks"
        echo ""
        echo "Content:"
        echo "  new-post \"Title\"  - Create new blog post"
        echo "  new-news \"Text\"   - Create news announcement"
        echo ""
        echo "Deployment:"
        echo "  deploy         - Build and deploy to GitHub"
        echo ""
        echo "Info:"
        echo "  stats          - Show repository statistics"
        echo "  help           - Show this help"
        echo ""
        echo "Examples:"
        echo "  ./scripts/dev.sh serve"
        echo "  ./scripts/dev.sh new-post \"My Research Update\""
        echo "  ./scripts/dev.sh check"
        ;;
esac