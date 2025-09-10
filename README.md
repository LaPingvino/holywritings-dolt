# Dolt Dataset Repository

This repository contains data exported from a Dolt database in CSV format.

## Repository Structure

- `.dolt-metadata/` - Repository metadata and schema information
- `data/` - CSV files organized by table name
- Large tables are automatically chunked to stay within Git hosting limits

## Tables

| Table | Rows | Size | Chunks |
|-------|------|------|--------|
| dolt_query_catalog | 0 | 40 B | 1 |
| languages | 120 | 2.0 KB | 1 |
| prayer_heuristics | 33 | 4.4 KB | 1 |
| prayer_match_candidates | 4 | 829 B | 1 |
| writings | 9000 | 14.7 MB | 1 |

## Usage

To work with this data in Dolt:

```bash
# Clone this repository back to Dolt format
dolt git clone <this-repo-url>

# Or work with the CSV files directly
# Data files are located in the data/ directory
```

## Generated Information

- Exported at: 2025-09-10 03:43:45 UTC
- Total tables: 5
- Format: CSV with automatic chunking for large tables

For more information about Dolt, visit https://github.com/dolthub/dolt
