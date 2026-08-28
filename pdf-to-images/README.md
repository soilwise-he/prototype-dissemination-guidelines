# PDF Intake Workflow

Drop source PDFs into `pdf-to-images/inbox/` and run the processor to create a knowledge-page scaffold inside the MkDocs site.

## Flow

1. A user saves a PDF into `inbox/`.
2. The processor waits until the file is stable.
3. Each PDF page is rendered to an image.
4. The PDF text is extracted and embedded as searchable text beneath each page image.
5. A numbered page is created in `docs/05-Guides/`.
6. The source PDF is moved to `archive/`.
7. Failed files are moved to `rejected/`.

If you edit a guide title in `docs/05-Guides/<guide-folder>/index.md`, run the processor once and it will auto-sync the folder `.pages` title for navigation.

## Commands

One-shot run:

```bash
uv run python pdf-to-images/process_inbox.py
```

Continuous watch mode:

```bash
uv run python pdf-to-images/process_inbox.py --watch
```

## Output contract

Each processed PDF creates a folder under `docs/05-Guides/` with:

- `index.md`
- `images/page-001.png`, `page-002.png`, ...
- `extracted-text.txt`
- `manifest.json`

The generated page is intentionally editorial-first: the automation handles extraction and scaffolding, while a human finalizes the summary and decides what belongs in the published knowledge base. The sidecar `extracted-text.txt` remains available for audit or downstream processing, but the knowledge page itself now keeps the text attached to each image so the content stays searchable in-context.