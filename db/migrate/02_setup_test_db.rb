# PRIOR TO RUNNING THIS FILE,
# CREATE THE DATABASE, BY RUNNING THE FOLLOWING COMMANDS VIA TERMINAL:
# 1) psql
# 2) CREATE DATABASE "seedlings_campaigns_test";
require_relative 'create_and_populate_tables'

p 'creating and populating the test database tables.....'

DatabaseCreation.create_and_populate_tables('seedlings_campaigns_test')
