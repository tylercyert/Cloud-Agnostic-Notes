---
aliases:
  - Relational Databases
  - Non-Relational Databases
  - SQL vs NoSQL
---

## **Overview**
Databases fall into two broad categories: **Relational (SQL)** and **Non-Relational (NoSQL)**.  
- **Relational** databases enforce structure, relations, and consistency using schemas, tables, and SQL.  
- **Non-Relational** databases are schema-flexible, scale horizontally, and often denormalize data for performance.  

## **Details**
### Relational Databases (SQL)
- Store data in **tables with rows and columns**.  
- Enforce **schemas** (structure must be defined ahead of time).  
- Support **relations/joins** between tables (foreign keys, normalization).  
- Examples: [[Azure SQL Database]], MySQL, PostgreSQL, Oracle DB.  
- Great for **transactions, financial systems, and mission-critical apps** where accuracy and consistency are critical.  

### Non-Relational Databases (NoSQL)
- Schema-flexible; can store **key–value pairs, JSON documents, graphs, or wide-column stores**.  
- Focus on **horizontal scalability** across distributed clusters.  
- Favor **denormalization** for performance (data may be duplicated).  
- Examples: [[Azure Cosmos DB]], MongoDB, Cassandra, Redis.  
- Great for **big data, IoT, high-scale web apps**, and workloads needing flexible schemas.  

## **Key Distinction**
- **Relational = Structured + Consistency**  
- **Non-Relational = Flexible + Scale**  
- NoSQL = “**Not Only SQL**” → Many NoSQL systems support SQL-like queries, but they don’t enforce strict relational constraints.  

## **Exam Tips**
- If you see **transactions, strong consistency, or relational schemas** → think SQL.  
- If you see **scalability, flexible schema, or distributed workloads** → think NoSQL.  

## **References**
- [Microsoft Learn: Choose between relational and nonrelational data stores](https://learn.microsoft.com/en-us/azure/architecture/data-guide/big-data/non-relational-data)  