# PRIOR TO RUNNING THIS FILE,
# CREATE THE DATABASE, BY RUNNING THE FOLLOWING COMMANDS VIA TERMINAL:
# 1) psql
# 2) CREATE DATABASE "seedlings_campaigns";
require_relative '03_create_and_populate_tables'

p 'creating and populating the development database tables.....'

DatabaseCreation.create_and_populate_tables('seedlings_campaigns')
