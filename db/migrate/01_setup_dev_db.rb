# PRIOR TO RUNNING THIS FILE,
# CREATE THE DATABASE, BY RUNNING THE FOLLOWING COMMANDS VIA TERMINAL:
# 1) psql
# 2) CREATE DATABASE "seedlings_campaigns";
require_relative '03_create_and_populate_tables'
require_relative '04_populate_tables'

p 'creating the development database tables.....'
DatabaseCreation.create_tables('seedlings_campaigns')

p 'populating the development database tables.....'
DatabasePopulation.populate_tables('seedlings_campaigns')
