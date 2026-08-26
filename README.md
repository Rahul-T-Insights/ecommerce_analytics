# Ecommerce Analytics — dbt + Snowflake

## Overview

This project builds an analytics data model for an ecommerce dataset using dbt and Snowflake.

The project transforms raw ecommerce data into clean staging models, reusable intermediate models, and business-facing marts.

## Data Sources

The raw data is stored in Snowflake under:

- Database: `ECOMMERCE`
- Schema: `RAW`

Source tables:

- `customers` — customer information
- `orders` — customer orders and order status
- `order_items` — individual items within orders

## dbt Model Structure

```text
RAW
 ↓
STAGING
 ↓
INTERMEDIATE
 ↓
MARTS