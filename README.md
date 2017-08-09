# README

This is a sample rails app for import a csv file into database.

#### Ruby version ####

ruby-2.4.0

#### System dependencies ####

* Linux system
* rvm
* ruby
* rails

#### Installation ####

Open bash console and write:

git clone https://github.com/gkobluk/csv_import.git

and then

cd csv_import

bundle install



#### Database creation ####

rake db:create

rake db:migrate

#### How to run the test suite ####

cd csv_import

rake spec

#### How it works? ####

cd csv_import

rails c

CsvService.import_people
