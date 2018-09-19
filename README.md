# Sports Tracker
A small pet project to help me keep track of statitistic about my
favorite sports.

## Setup

* Create development database.

* Create test database.

* Run the database migration `rake db:migrate`

* Set up the database:
  Create the database, load the schema, and initialize with the seed data

	$ rake db:setup

## Testing
Running the unit tests:

  $ rails g rspec:install

	$ bundle exec rspec [directory or file name]

Incase the test database is not being properly set up by `rspec`,
run:

	$ rake db:test:prepare

## Running
* clone the project

* bundle install

* in bash shell run

    source ~/.rvm/scripts/rvm


* bundle exec rake db:create

* rails s -p [port number]

* fire up browser and point it to the specied port
