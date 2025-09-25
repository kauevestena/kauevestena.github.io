# Analytics Setup Guide

This guide helps you set up analytics and tracking for your academic website.

## Google Analytics 4 Setup

### 1. Create Google Analytics Account

1. Go to [Google Analytics](https://analytics.google.com/)
2. Click "Start measuring"
3. Set up your account:
   - **Account name**: "Kauê Vestena Academic Website"
   - **Property name**: "kauevestena.github.io"
   - **Country**: Brazil
   - **Currency**: Brazilian Real (BRL)

### 2. Configure Property

1. **Property settings:**
   - Industry category: "Education"
   - Business size: "Small"
   - Use case: "Get baseline reports"

2. **Data streams:**
   - Choose "Web"
   - Website URL: `https://kauevestena.github.io`
   - Stream name: "Academic Website"

### 3. Get Measurement ID

1. Copy your **Measurement ID** (format: G-XXXXXXXXXX)
2. Add it to `_config.yml`:

```yaml
google_analytics: G-XXXXXXXXXX # Replace with your actual ID
```

## Google Search Console

### 1. Add Property

1. Go to [Google Search Console](https://search.google.com/search-console/)
2. Add property: `https://kauevestena.github.io`
3. Choose "URL prefix" method

### 2. Verify Ownership

**Method 1: HTML meta tag (Recommended)**
1. Copy the verification meta tag
2. Add to `_config.yml`:

```yaml
google_site_verification: your_verification_code # without the meta tag wrapper
```

**Method 2: DNS verification**
1. Add TXT record to your domain (if using custom domain)
2. Wait for DNS propagation

### 3. Submit Sitemap

1. In Search Console, go to "Sitemaps"
2. Submit: `https://kauevestena.github.io/sitemap.xml`

## Bing Webmaster Tools

### 1. Add Site

1. Go to [Bing Webmaster Tools](https://www.bing.com/webmasters/)
2. Add your site: `https://kauevestena.github.io`

### 2. Verify

1. Copy the verification meta tag
2. Add to `_config.yml`:

```yaml
bing_site_verification: your_bing_verification_code
```

## Analytics Configuration

### Enable Analytics in Config

```yaml
# Analytics and search engine verification
enable_google_analytics: true
enable_google_verification: true
enable_bing_verification: true

# IDs (replace with your actual values)
google_analytics: G-XXXXXXXXXX
google_site_verification: your_google_verification_code
bing_site_verification: your_bing_verification_code
```

## Privacy and GDPR Compliance

### 1. Privacy Policy

Consider adding a privacy policy page (`_pages/privacy.md`) covering:
- What data is collected
- How it's used
- User rights
- Contact information

### 2. Cookie Consent

For European visitors, consider implementing cookie consent:
- Use Jekyll plugins like `jekyll-cookie-consent`
- Or implement custom solution

### 3. Data Retention

Configure Google Analytics data retention:
1. Go to Admin → Data Settings → Data Retention
2. Set appropriate retention period (26 months is standard)

## Monitoring and Reports

### Key Metrics to Track

1. **Audience:**
   - Geographic distribution
   - Device types
   - Browser usage

2. **Acquisition:**
   - Traffic sources
   - Social media referrals
   - Search engine performance

3. **Content:**
   - Most viewed pages
   - Publications page performance
   - Project page engagement

4. **Academic Focus:**
   - CV downloads
   - Publication link clicks
   - Project repository visits

### Custom Events (Advanced)

Track academic-specific interactions:

```javascript
// Track publication downloads
gtag('event', 'download', {
  'event_category': 'Publication',
  'event_label': 'Paper Title',
  'value': 1
});

// Track external link clicks
gtag('event', 'click', {
  'event_category': 'External Link',
  'event_label': 'GitHub Repository',
  'transport_type': 'beacon'
});
```

## Testing and Validation

### 1. Real-time Reports

- Check Google Analytics Real-time reports
- Verify tracking is working

### 2. Google Tag Assistant

- Install Chrome extension
- Verify tags are firing correctly

### 3. Search Console

- Monitor indexing status
- Check for crawl errors
- Review search performance

## Maintenance

### Monthly Tasks

- [ ] Review top-performing content
- [ ] Check for crawl errors
- [ ] Monitor site speed
- [ ] Review search queries

### Quarterly Tasks

- [ ] Update goals and conversions
- [ ] Review and update privacy policy
- [ ] Analyze year-over-year growth
- [ ] Optimize underperforming pages

---

## Academic-Specific Tracking

Consider tracking:
- Paper downloads and views
- Conference presentation slides access
- CV downloads
- Project repository clicks
- Contact form submissions
- Conference and collaboration inquiries

This data helps understand research impact and audience engagement.