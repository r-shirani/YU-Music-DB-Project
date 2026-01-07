# YU-Music Database Project 🎵

## 📖 About the Project
**YU-Music** is a music-based social platform designed to facilitate music sharing, purchasing, categorization, and user interaction. The platform allows users to not only access music but also interact with each other, creating a social experience around music content.

This repository contains the complete database design and implementation for the YU-Music platform, developed as the final project for the **"Database Design Principles"**.

## 🚀 Project Objectives & Roadmap
The project is divided into the following key phases:

1.  **ER Diagram Design:** Modeling entities (Customer, Employee, Track, Invoice, etc.) and their relationships[cite: 68].
2.  **Relational Schema Mapping:** Converting the ER diagram into a relational database schema[cite: 80].
3.  **Normalization:** Analyzing tables to ensure they adhere to **BCNF** (Boyce-Codd Normal Form)[cite: 84].
4.  **Implementation:** Creating the database structure using a DBMS (MySQL / SQLite)[cite: 87, 88].
5.  **SQL Queries:** Writing complex queries for data insertion, retrieval, and analysis[cite: 90].

## ⚙️ Key Features & Entities

### 1. Users & Roles
* **Customers:** Users have profiles (Name, Email, Phone, Address) and are assigned a support employee. They can purchase music and create playlists.
* **Employees:** Responsible for user management and support. The system supports a hierarchical structure where employees report to managers.

### 2. Music Content Management
The database effectively structures music data:
* **Artists** can have multiple **Albums**.
* **Albums** contain multiple **Tracks**.
* **Tracks** store details like Genre, Media Type (e.g., MP3, AAC), Duration, Composer, and Unit Price.

### 3. Purchasing & Billing
* **Invoices:** Generated for every purchase, storing the customer's billing address and total amount.
* **Invoice Lines:** Links invoices to specific tracks, recording the unit price and quantity.

### 4. Playlists (Social Feature)
* Users can create custom **Playlists** with specific names.
* A many-to-many relationship exists between tracks and playlists, allowing flexible content organization.

## 🛠 Technologies
* **Database Engine:** SQL Server
* **Language:** SQL

## 🎓 Course Information
* **Course:** Database Design Principles
* **Instructor:** Dr. Zahra Zojaji 
* **Institution:** Faculty of Computer Engineering, University of Isfahan
* **Semester:** Fall 2025

---
*Created for educational purposes.*
