# Repository Guidelines

## Project Structure & Module Organization

This repository contains MySQL interview practice material. SQL exercises currently live in the repository root; `Basic Select Queries.sql` uses the `interview_practice` database and queries its `sales_data` table. Add new topics as clearly named `.sql` files in the root unless the collection grows enough to warrant topic folders. Keep IDE metadata such as `.idea/` out of source changes unless a task specifically concerns project configuration.

## Build, Test, and Development Commands

There is no build system, test suite, or package manager configured. To run the exercises, connect to a MySQL instance that has the expected database and table, then execute the script with a client, for example:

```sh
mysql -u <user> -p < Basic\ Select\ Queries.sql
```

The script starts with `USE interview_practice;`; adjust the database or prepare compatible sample data before running it. Review query results manually against each exercise prompt.

## Coding Style & Naming Conventions

Use `.sql` extensions and descriptive topic-based filenames such as `Basic Select Queries.sql`. Keep exercises numbered in sequence and place a short SQL comment immediately before each solution. Use uppercase SQL keywords (`SELECT`, `WHERE`, `GROUP BY`) and consistent spaces around operators and after commas. Prefer explicit column lists when the exercise asks for specific fields; use `SELECT *` when it asks for all columns. Preserve readable section headings to group related questions.

## Testing Guidelines

No automated database fixtures or assertions are currently provided. Before submitting query changes, run the affected script against a MySQL database with representative data and confirm that each result matches its comment. Include edge cases relevant to the query, such as `NULL` values, duplicate groups, and tied sort values, when validating behavior.

## Commit & Pull Request Guidelines

The repository has no commit history to establish a convention. Use concise imperative commit subjects that name the topic or change, for example `Add filtering practice queries`. Pull requests should summarize the exercises or corrections, note the MySQL version or schema assumptions, and include example output when it helps reviewers verify results.

## Configuration & Data

Do not commit credentials or private database exports. Document required database and table names in the script or its accompanying notes; keep sample data small and clearly identified as practice data.
