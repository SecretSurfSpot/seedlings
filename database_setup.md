# Development & Test Database Setup

To setup the development & test databases, via the terminal, enter the following commands:

1) To access the PostgreSQL terminal interface:
`psql`

2) To create the 'development' database:
`CREATE DATABASE "seedlings_campaigns";`

3) To create the 'testing' database:
`CREATE DATABASE "seedlings_campaigns_test";`

4) To quit the PostgreSQL interface:
`\q`

5) Navigate to the db/migrate directory:
`cd db/migrate/`

6) To setup the development database:
`ruby ./01_setup_dev_db.rb`

7) To setup the test database:
`ruby ./02_setup_test_db.rb`
