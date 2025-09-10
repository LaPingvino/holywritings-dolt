# Dolt Dataset Repository

This repository contains data exported from a Dolt database in CSV format.

## Repository Structure

- `.dolt-metadata/` - Repository metadata and schema information
- `data/` - CSV files organized by table name
- Large tables are automatically chunked to stay within Git hosting limits

## Tables

| Table | Rows | Size | Chunks |
|-------|------|------|--------|
| departments | 4 | 0 B | 1 |
| employees | 5 | 0 B | 1 |

## Usage

To work with this data in Dolt:

```bash
# Clone this repository back to Dolt format
dolt git clone <this-repo-url>

# Or work with the CSV files directly
# Data files are located in the data/ directory
```

## Generated Information

- Exported at: 2025-09-10 02:40:26 UTC
- Total tables: 2
- Format: CSV with automatic chunking for large tables

For more information about Dolt, visit https://github.com/dolthub/dolt
