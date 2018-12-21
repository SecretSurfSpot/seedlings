# CRC Cards


Class: Campaign

| R   | C        |
| ------------- | -------------    |
| view_all_campaigns          |  |
| select_campaign        |  |



Class: Invest

| R  | C        |
| ------------- | -------------    |
| invest_in_campaign          |Campaign |


Class: Confirmation

| R  | C        |
| ------------- | -------------    |
| confirm_investment_made          |Campaign |



# Database Model

Table name: campaigns

| Column name   | Data type        |
| ------------- | -------------    |
| id            | SERIALl  |
| name          | VARCHAR(50) PRIMARY KEY         |
| image          | VARCHAR(50)          |
| country     | VARCHAR(30)  |
| sector     | VARCHAR(30)  |
| target_amount     | NUMERIC  |



Table name: investments

| Column name   | Data type        |
| ------------- | -------------    |
| campaign_name            | VARCHAR(50) REFERENCES campaigns(name) |
| investor_name        | VARCHAR(50) REFERENCES investor(name)     |
| amount       | NUMERIC          |
| date    | TIMESTAMP default CURRENT_TIMESTAMP          |


Table name: investor

| Column name   | Data type        |
| ------------- | -------------    |
| name            | VARCHAR(50) PRIMARY KEY |
