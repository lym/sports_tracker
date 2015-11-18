# Fortune Bet

A web app for online gambling companies.

## Setup
* Create development database with name <i>fortunebet_development</i>

* Create test database with name <i>fortunebet_test</i>

* Run the database migration `rake db:migrate`

* Set up the database:
  Create the database, load the schema, and initialize with the seed data

	$ rake db:setup

## Testing
Running the unit tests:

	$ bundle exec rspec [directory or file name]

## Running
- clone the project
- bundle install
- in bash shell run
    source ~/.rvm/scripts/rvm

    then run rvm use 1.9.2  # some issue with rvm and bash

- bundle exec rake db:create

- rails s -p [port number]

- fire up browser and point it to the specied port
