# MySQL Interview Coding

A growing collection of SQL exercises for practicing common MySQL interview queries. Each exercise includes a short prompt in a SQL comment followed by a query solution, making the files useful for revision and hands-on practice.

## Current Topics

[`Basic Select Queries.sql`](Basic%20Select%20Queries.sql) contains 20 exercises covering:

- Selecting columns and distinct values
- Filtering rows with conditions, ranges, and `NULL` checks
- Sorting and limiting results
- Grouping and counting records
- Pattern matching with `LIKE`

## Requirements

- MySQL Server and a command-line client or SQL editor
- A database named `interview_practice`
- A `sales_data` table with the columns used in the exercise file, including customer, product, order, payment, age, discount, and rating fields

This repository currently provides the exercise queries, not a database dump or sample dataset. Create or load compatible practice data before running the scripts.

## Getting Started

Clone the repository, connect to MySQL, and run the script from the repository directory:

```sh
git clone <repository-url>
cd MySQL_Interview_Coding
mysql -u <user> -p < "Basic Select Queries.sql"
```

The script selects the `interview_practice` database with `USE interview_practice;`. Ensure it exists and contains the expected table first. You can also open the `.sql` file in a MySQL-compatible editor and run individual queries.

## How to Practice

Read each numbered prompt, try writing the query yourself, then compare it with the solution. Run queries against sample data and inspect the results, especially for grouped records, sorting ties, and missing values.

## Repository Layout

```text
.
├── Basic Select Queries.sql  # Numbered SELECT and filtering exercises
├── AGENTS.md                 # Contributor guidance
└── README.md
```

## Contributing

Contributions that add exercises, clarify prompts, or improve query correctness are welcome. Keep exercises numbered and grouped by topic, use clear comments, and note any schema assumptions. See [AGENTS.md](AGENTS.md) for repository conventions.
