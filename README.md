# Business SQL Analysis — Small Relational Reporting Example

**Status:** Source files for a small illustrative SQL exercise are included. The sample records are fictitious; no production dataset or validated business performance results are claimed.

## What's included

This repository contains:
- [Table definitions](schema/create_tables.sql) for `customers`, `products`, `orders`, and `order_items`
- [Sample insert statements](schema/data/insert_sample_data.sql) for a handful of fictitious customers, products, orders, and items
- [Four business-reporting queries](schema/data/queries/business_questions.sql)

## Questions answered by the queries

1. Revenue from orders marked Completed
2. Revenue aggregated by product
3. Number of orders associated with each customer
4. Percentage of orders marked Returned

The queries demonstrate joins, filters, aggregation, conditional counting, and grouping on sample relational data. They are **not** a claim of production reporting or independently benchmarked database performance.

## How to inspect or run

Review the three linked SQL files above. In a compatible SQL environment, create the tables first, load the sample inserts second, and run the reporting queries last. SQL engine version and execution results have **not been independently recorded here**, so no specific engine or tested setup is claimed.

## Limits

This is a small practice model: three customers, three products, three orders, and four order items. It is useful to discuss query structure, but not to claim real business trends, performance optimization, or enterprise-scale data modeling.
