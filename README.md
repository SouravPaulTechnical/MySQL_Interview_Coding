# MySQL Interview Coding

A collection of MySQL practice queries for interview preparation. Each exercise file pairs SQL prompts in comments with example solutions. The repository also includes a synthetic e-commerce dataset so you can run the queries locally.

## Practice Files

| File | Topics |
| --- | --- |
| [`Basic Select Queries.sql`](Basic%20Select%20Queries.sql) | Selecting columns, filtering, sorting, limits, grouping, and pattern matching |
| [`Level-2_Queries.sql`](Level-2_Queries.sql) | Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`), `GROUP BY`, and `HAVING` filters |
| [`mysql_interview_sales_dataset.sql`](mysql_interview_sales_dataset.sql) | Database and table setup plus 10,000 synthetic sales records |

The dataset uses the `interview_practice` database and creates the `sales_data` table with order, customer, product, payment, shipping, and rating fields. It is designed for MySQL 8.0 or later.

## Getting Started

Install or connect to MySQL 8.0+, then run the dataset script from the repository directory:

```sh
mysql -u your_user -p < mysql_interview_sales_dataset.sql
```

This creates `interview_practice`, creates `sales_data`, loads the sample rows, and runs a row-count check. **The setup script drops and recreates `interview_practice.sales_data` if it already exists. Back up any data you need before running it.**

After setup, run either exercise file:

```sh
mysql -u your_user -p < "Basic Select Queries.sql"
mysql -u your_user -p < Level-2_Queries.sql
```

You can also open the `.sql` files in a MySQL-compatible editor and run individual queries. Both exercise files expect `interview_practice.sales_data` to exist.

## How to Practice

Try each prompt before reading its query, then run the solution and inspect the result. Experiment with `NULL` values, duplicate groups, and tied sort values to understand how MySQL handles them.

The Level-2 exercises cover overall aggregates, customer/category/city/product/payment-method summaries, and grouped-result filters such as minimum order counts and revenue thresholds. Prompts 16 and 17 in the `HAVING` section are currently left for you to solve.

## Repository Layout

```text
.
├── Basic Select Queries.sql          # Foundational SELECT practice
├── Level-2_Queries.sql               # Aggregation and grouping practice
├── mysql_interview_sales_dataset.sql # Synthetic schema and sample data
├── AGENTS.md                         # Contributor guidance
└── README.md
```

## Contributing

Add exercises in clearly named `.sql` files, group prompts by topic, and document schema assumptions. Use synthetic practice data only; do not include credentials or private database exports. See [AGENTS.md](AGENTS.md) for repository conventions.
