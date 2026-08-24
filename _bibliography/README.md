# Bibliography Management

`papers.bib` drives the [publications page](../_pages/publications.md) via Jekyll Scholar.

## Source of truth

Entries here are mirrored from [ORCID 0000-0003-1225-2371](https://orcid.org/0000-0003-1225-2371).
Keeping ORCID up to date and regenerating from it is the least error-prone workflow — every entry
then has a real DOI behind it.

To pull the canonical BibTeX for a DOI:

```bash
curl -LH "Accept: application/x-bibtex" https://doi.org/<DOI>
```

Crossref output needs a little hand-editing before it is committed:

- Cite keys are inconsistent (sometimes empty). Normalize to `<firstauthor><year><keyword>`.
- Some publishers emit malformed author lists, e.g. `author={ and Surname, Name and }`.
  Strip the empty `and` fragments.
- Normalize every spelling of the site owner's name to `Vestena, Kauê de Moraes` so author
  highlighting works (see the `scholar:` block in `_config.yml`).

## al-folio fields

Beyond standard BibTeX, these are recognised:

- `abbr` — venue badge; add a matching key to [`_data/venues.yml`](../_data/venues.yml) for colour and link
- `bibtex_show={true}` — show the BibTeX popup
- `selected={true}` — feature on the front page (use sparingly)
- `html`, `pdf`, `code`, `website`, `abstract` — link buttons

Only add `pdf={...}` when the file actually exists in `assets/pdf/`.

Co-author links come from [`_data/coauthors.yml`](../_data/coauthors.yml), keyed by lowercase
surname.

## Validation

```bash
python3 validate_bib.py
```

Checks that every entry has the required fields for its type. Exits non-zero on failure.
