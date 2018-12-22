# Development & Test Database Setup

To setup the development & test databases, via the terminal, enter the following commands:

To access the PostgreSQL terminal interface:
- `psql`

To create the 'development' database:
- `CREATE DATABASE "seedlings_campaigns";`

To create the 'test' database:
- `CREATE DATABASE "seedlings_campaigns_test";`

To quit the PostgreSQL interface:
- `\q`

Navigate to the db/migrate directory:
- `cd db/migrate/`

To setup the development database:
- `ruby ./01_setup_dev_db.rb`

To setup the test database:
- `ruby ./02_setup_test_db.rb`
