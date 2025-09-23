# Bibliography Management

This directory contains the bibliography files for your academic publications.

## Files

- `papers.bib` - Main bibliography file with all your publications
- `README.md` - This file with instructions

## Adding New Publications

To add a new publication to your website:

1. **Add the BibTeX entry** to `papers.bib`
2. **Include relevant fields**:
   - `abbr` - Short journal/conference abbreviation
   - `bibtex_show={true}` - Show the BibTeX citation
   - `selected={true}` - Feature on the front page (use sparingly)
   - `pdf` - Link to PDF file (place PDFs in `assets/pdf/`)
   - `code` - Link to code repository
   - `website` - Link to project website
   - `doi` - Digital Object Identifier
   - `abstract` - Paper abstract

## Example Entry

```bibtex
@article{vestena2024example,
  abbr={Journal},
  bibtex_show={true},
  title={Your Paper Title},
  author={Vestena, Kauê de Moraes and Co-Author, Name},
  journal={Journal Name},
  volume={1},
  number={1},
  pages={1--10},
  year={2024},
  publisher={Publisher},
  doi={10.1000/example.doi},
  abstract={Your paper abstract here...},
  pdf={vestena2024example.pdf},
  selected={true}
}
```

## PDF Management

Place PDF files in the `assets/pdf/` directory and reference them in the `pdf` field using just the filename.

## Scholar Configuration

The Jekyll Scholar configuration in `_config.yml` is set to recognize your name variations:
- `Kauê`
- `Kauê de Moraes`
- `K. M.`
- Last name: `Vestena`

This ensures proper author highlighting in the publication list.