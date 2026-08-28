# Guides

This section stores knowledge pages generated from source PDFs and then reviewed by an editor.

## Operating flow

1. Drop a source PDF into `pdf-to-images/inbox/`.
2. Run the intake processor.
3. Review the generated page under this section.
4. Edit the summary and keep or trim the extracted page images as needed.

## What the automation creates

For each incoming PDF, the workflow creates a numbered folder in this section containing:

- an `index.md` knowledge page ready for editorial review;
- an `images/` folder with one rendered image per PDF page and page-local searchable text in the generated document;
- an `extracted-text.txt` file with the page text pulled from the PDF for audit or downstream reuse;
- a `manifest.json` file with basic processing metadata.

## Editorial note

The generated page is intended as a starting point, not a final publication artifact. The script handles ingestion, traceability, and layout scaffolding; a human should still tighten the narrative before treating the page as authoritative knowledge.