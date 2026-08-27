# Platform Components {#components}

The SoilWise Catalogue is composed of thirteen components. This chapter describes each in plain language: what it does, why it exists, who interacts with it, and what is planned next.

## Harvester (including Metadata Harmonisation)

**What it does.** The Harvester connects to external repositories and aggregators at configured intervals and downloads metadata records. It currently harvests from: OpenAIRE, CORDIS, the INSPIRE Geoportal, data.europa.eu, EJP Soil, Impact4Soil, and PrepSoil.

**Why it exists.** Soil data is scattered. Centralised harvesting means data providers do not need to submit records manually — publishing to a major aggregator is sufficient.

**Who interacts with it.** Catalogue administrators configure and monitor harvest schedules. Data providers interact indirectly by publishing to supported repositories.

## Metadata Validation

**What it does.** Each harvested record is scored for completeness, correctness, and FAIR compliance. Issues (missing abstracts, broken links, absent licences) are flagged.

**Why it exists.** Quality metadata improves discoverability and reuse. Validation makes gaps visible so they can be addressed.

## Metadata Augmentation

**What it does.** Eight automated processes enrich records after harvest:

1. Keyword matching against SoilVoc (in six languages)
2. ORCID reconciliation for author identifiers
3. ROR reconciliation for organisation identifiers
4. Geographic bounding box extraction from text
5. Link Liveliness Assessment (checks whether URLs still resolve)
6. Licence normalisation
7. Resource-type classification
8. Language detection

**Why it exists.** Many records lack structured keywords, geographic information, or persistent identifiers. Augmentation adds value without requiring providers to change their workflows.

## Repository Storage

**What it does.** Harmonised and augmented records are persisted in three complementary stores:

- **PostgreSQL** — relational database; source of truth for catalogue content.
- **Virtuoso** — RDF triple store; supports SPARQL queries and semantic reasoning.
- **Apache Solr** — search index; supports fast keyword, faceted, and (planned) vector-based semantic search.

## Soil Health Knowledge Graph and SoilVoc

**What it does.** The Soil Health Knowledge Graph (SHKG) is an RDF representation of soil domain knowledge, linking SoilWise metadata to controlled vocabularies (SoilVoc, AGROVOC, GEMET, GLOSIS, ISO 11074). SoilVoc is the project's own multilingual vocabulary covering key soil health concepts.

## SoilWise Finder (the Metadata Catalogue)

**What it does.** The Finder at [catalogue.SoilWise-he.eu](https://catalogue.SoilWise-he.eu) is the primary discovery interface. It offers:

- Full-text and faceted search
- Filtering by resource type, project, geographic scope, licence, and keyword
- Record detail pages with provenance, quality score, and download links
- API access for programmatic queries

## Soil Companion (Conversational AI Assistant)

**What it does.** The Soil Companion v2 is a large-language-model (LLM) powered conversational assistant that answers natural-language questions about soil resources. It uses retrieval-augmented generation (RAG) over the SoilWise knowledge base and connects to external geospatial data services via the Model Context Protocol (MCP).

## Publication Support Tools

**What it does.** A set of templates, validators, and guidelines that help Mission Soil projects publish their outputs in a way that makes them harvestable and FAIR-compliant.

## Dissemination and Guidelines

**What it does.** This component — of which the present User Manual is a primary output — produces user-facing documentation, training materials, and guidelines for data providers, policy users, and technical integrators.

## System Monitoring

**What it does.** Grafana dashboards display real-time metrics and logs for all SoilWise services (available to the operations team at grafana.SoilWise.wetransform.eu). Loki aggregates logs; Promtail ships them from containers.

## Access Control

**What it does.** Keycloak (at id.SoilWise.wetransform.eu) is the central OpenID Connect identity provider. It manages authentication for the Soil Companion and administrative interfaces. EU Login integration is planned for the next development cycle.

## EUSO Integration

**What it does.** A dedicated component manages the technical handover to JRC/EUSO: data export pipelines, API alignment, and onboarding documentation for JRC operational staff.

## Manual Metadata Authoring

**What it does.** A lightweight editing interface allows catalogue stewards to create and update records manually for resources that cannot be harvested automatically.
