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

    # Find all entries. Brace-match to the entry's closing brace: a naive
    # [^}]+ stops at the first nested field brace and hides every later field.
    entries = []
    for m in re.finditer(r"@(\w+)\{([^,]+),", content):
        depth, i = 1, m.end()
        while i < len(content) and depth:
            if content[i] == "{":
                depth += 1
            elif content[i] == "}":
                depth -= 1
            i += 1
        entries.append((m.group(1), m.group(2).strip(), content[m.end() : i - 1]))

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
            if not re.search(rf"\b{field}\s*=", entry_content, re.IGNORECASE):
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
            field
            for field in alfolio_fields
            if re.search(rf"\b{field}\s*=", entry_content, re.IGNORECASE)
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
        if not validate_bibtex(bib_file):
            sys.exit(1)
    else:
        print(f"Error: {bib_file} not found!")
        sys.exit(1)
