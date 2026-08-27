# The SoilWise Catalogue {#catalogue}

## SoilWise in a nutshell

SoilWise is a Horizon Europe project (2023–2027) building an open-access metadata catalogue that brings together soil-related data and knowledge produced by EU-funded research and policy initiatives. The platform helps soil scientists, project data managers, policy makers, and Living Lab participants find, understand, and reuse this information.

## Why does SoilWise exist?

Despite the wealth of soil-related data and knowledge produced by EU projects, most of it is hard to find. Datasets, reports, and methods are scattered across hundreds of project websites, institutional repositories, and aggregator platforms (Zenodo, OpenAIRE, CORDIS, the INSPIRE Geoportal, data.europa.eu). There is no single discovery point.

SoilWise exists to solve this problem by:

1. **Harvesting** metadata from major European aggregators and repositories at regular intervals.
2. **Harmonising** it to a single common model.
3. **Validating** its quality and flagging issues.
4. **Enriching** it where information is missing.
5. **Storing** it in a way that allows fast and meaningful search.
6. **Presenting** it through two user-facing interfaces: the SoilWise Finder and the Soil Companion.

## Who should read this manual?

| Audience | What they will find useful |
|---|---|
| EUSO / JRC staff | Full system overview; handover preparation |
| Mission Soil data managers | How to make project outputs findable |
| Policy makers | How to search for evidence; what the catalogue contains |
| Living Lab participants | How to use the Finder and Soil Companion |
| Consortium partners | Component descriptions; integration points |

## How to use this document

Read the chapters in order for a complete overview, or jump to the chapter relevant to your role. The Finder and Soil Companion walkthroughs in Chapter \@ref(components) are self-contained and can be read independently.

## How SoilWise works: the journey of a soil resource

The following steps describe what happens to a soil dataset from the moment it is published on Zenodo to the moment a user finds it in SoilWise.

### Step 1 — Harvesting

The Harvester component connects to external repositories at regular intervals and downloads their metadata records. No data files are copied, only descriptive metadata.

### Step 2 — Harmonisation

Raw metadata arrives in many formats (DataCite, DublinCore, ISO 19115, DCAT, …). The Harmonisation step maps all incoming records to the SoilWise common model so that they can be compared and searched uniformly.

### Step 3 — Validation

The Validation component checks each record for completeness, correctness, and FAIR compliance. Records receive a quality score and any issues are flagged for stewards to review.

### Step 4 — Augmentation

Eight automated processes enrich records: keyword matching against SoilVoc in six languages, ORCID/ROR reconciliation, geographic bounding box extraction, link liveliness assessment, and others. Augmentation adds value without requiring data providers to change anything.

### Step 5 — Storage and indexing

Harmonised and augmented records are stored in three complementary systems: PostgreSQL (relational database), Virtuoso (RDF triple store / knowledge graph), and Apache Solr (search index).

### Step 6 — Discovery through the SoilWise Finder

The Finder at [catalogue.SoilWise-he.eu](https://catalogue.SoilWise-he.eu) is a faceted search and browse interface. Users can filter by resource type, geographic scope, keyword, licence, and Mission Soil project.

### Step 7 — Knowledge Exploration through the Soil Companion

The Soil Companion v2 is a conversational AI assistant grounded in the SoilWise knowledge base. It supports natural-language questions about soil data and connects to geospatial data services through the Model Context Protocol (MCP).
