# Repository Guidelines

## Project Structure & Module Organization

This repository contains root-level MySQL interview exercises and a sample data loader. `Basic Select Queries.sql` covers foundational queries; `Level-2_Queries.sql` covers aggregates and grouping; `mysql_interview_sales_dataset.sql` creates the `interview_practice.sales_data` table and loads 10,000 synthetic rows. Keep new topic files in the root with descriptive `.sql` names. Avoid committing IDE metadata unless a change specifically concerns project configuration.

## Build, Test, and Development Commands

There is no build system or automated test suite. With MySQL 8.0+, load the sample schema and data with:

```sh
mysql -u your_user -p < mysql_interview_sales_dataset.sql
```

Then run a practice file, for example:

```sh
mysql -u your_user -p < "Basic Select Queries.sql"
mysql -u your_user -p < Level-2_Queries.sql
```

The dataset script drops and recreates `sales_data`; preserve or back up any existing table before running it. Verify query results manually against each prompt.

## Coding Style & Naming Conventions

Use descriptive topic-based filenames, uppercase SQL keywords, and consistent spaces around operators and after commas. Put a concise prompt comment before each solution, number exercises within sections, and use section headings to group related questions. Match selected columns to each prompt and keep example data synthetic.

## Testing Guidelines

No automated fixtures or assertions are configured. Run changed queries against the sample data and check expected behavior, including `NULL` values, duplicates, grouping, and sort ties. If changing the dataset, confirm it loads on MySQL 8.0+ and that its row-count check succeeds.

## Commit & Pull Request Guidelines

Use concise imperative commit subjects that describe the topic, such as `Add aggregation practice queries`. Pull requests should summarize the exercises or corrections, state schema or MySQL version assumptions, and include example output when useful.

## Configuration & Data

The query files use the `interview_practice` database and `sales_data` table. Do not commit credentials or private database exports. Keep schema requirements clear and sample data synthetic.
