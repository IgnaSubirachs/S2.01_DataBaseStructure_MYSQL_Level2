# 🎥 YouTube Database Project (Level 2)

## 📄 Description – Exercise Statement

This exercise focuses on designing a simplified relational database for a basic version of YouTube. The objective is to structure core entities such as users, videos, channels, playlists, comments, and interactions (likes, dislikes, subscriptions) in a normalized and relational schema.

The database supports managing users, publishing videos with states (public, hidden, private), tagging videos, creating channels, subscribing to other channels, liking/disliking videos and comments, and organizing favorite videos into playlists.

## 💻 Technologies Used

- **MySQL 8.0+**
- **SQL** (DDL and DML)
- ER modeling principles
- SQL IDEs or clients (MySQL Workbench, DBeaver, phpMyAdmin)

## 📋 Requirements

- MySQL Server (version 8.0 or higher)
- MySQL-compatible client or graphical interface
- User access with privileges to create and modify tables
- Optional: ERD tool for visualizing relationships

## 🛠️ Installation

1. Create a new database for the project:
   ```sql
   CREATE DATABASE youtube_db;
   USE youtube_db;
   ```
2. Execute your table creation and data population script, either by importing the `.sql` file or pasting SQL commands into your editor.

## ▶️ Execution

Once your tables and data are created, you can run SQL queries such as:
```sql
SELECT * FROM Users;
SELECT title, views FROM Videos ORDER BY views DESC;
SELECT * FROM Subscriptions WHERE subscriber_email = 'user@example.com';
```

Use SELECT JOIN queries to analyze relationships, for example:
```sql
SELECT v.title, c.name AS channel_name
FROM Videos v
JOIN Channels c ON v.channel_id = c.id;
```

## 🌐 Deployment

This database is intended for development and learning purposes only. For production use:
- Secure user data with proper encryption/hashing.
- Enforce access control in the application layer.
- Apply constraints and indexing for optimization.
- Use a cloud-based relational DBMS if needed (e.g., Amazon RDS, Google Cloud SQL).