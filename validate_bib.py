#!/usr/bin/env python3
"""
Simple BibTeX validation script for papers.bib
Checks for common formatting issues and required fields.
"""

import re
import sys
from pathlib import Path


def validate_bibtex(filepath):
    """Validate BibTeX file for common issues."""
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    issues = []

    # Find all entries
    entries = re.findall(r"@(\w+)\{([^,]+),([^}]+)\}", content, re.DOTALL)

    print(f"Found {len(entries)} BibTeX entries")

    for entry_type, entry_key, entry_content in entries:
        print(f"\n✓ {entry_type}: {entry_key}")

        # Check for required fields based on entry type
        if entry_type.lower() == "article":
            required = ["title", "author", "journal", "year"]
        elif entry_type.lower() == "inproceedings":
            required = ["title", "author", "booktitle", "year"]
        elif entry_type.lower() in ["mastersthesis", "phdthesis"]:
            required = ["title", "author", "school", "year"]
        else:
            required = ["title", "author", "year"]

        # Check for presence of required fields
        for field in required:
            if f"{field}=" not in entry_content.lower():
                issues.append(f"  ⚠ Missing required field '{field}' in {entry_key}")

        # Check for common al-folio fields
        alfolio_fields = [
            "bibtex_show",
            "selected",
            "pdf",
            "code",
            "website",
            "abstract",
        ]
        found_alfolio = [
            field for field in alfolio_fields if f"{field}=" in entry_content.lower()
        ]
        if found_alfolio:
            print(f"  📎 Al-folio fields: {', '.join(found_alfolio)}")

    if issues:
        print("\n⚠ Issues found:")
        for issue in issues:
            print(issue)
        return False
    else:
        print("\n✅ BibTeX file validation passed!")
        return True


if __name__ == "__main__":
    bib_file = Path("_bibliography/papers.bib")
    if bib_file.exists():
        validate_bibtex(bib_file)
    else:
        print(f"Error: {bib_file} not found!")
        sys.exit(1)
