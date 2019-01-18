# PRIOR TO RUNNING THIS FILE,
# CREATE THE DATABASE, BY RUNNING THE FOLLOWING COMMANDS VIA TERMINAL:
# 1) psql
# 2) CREATE DATABASE "seedlings_campaigns_test";
require_relative '03_create_and_populate_tables'
require_relative '04_populate_tables'

p 'creating the test database tables.....'
DatabaseCreation.create_tables('seedlings_campaigns_test')

p 'populating test database tables.....'
DatabasePopulation.populate_tables('seedlings_campaigns_test')
