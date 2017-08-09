# README

This is a sample rails app for import a csv file into database.

Things you may want to cover:

* Ruby version: ruby-2.4.0

How it works?

* System dependencies

Linux system

* Installation

Open bash console and write:

git clone https://github.com/gkobluk/csv_import.git

and then

cd csv_import
bundle install


* Database creation

rake db:create
rake db:migrate

* How to run the test suite

rake spec

* Run app

rails c
CsvService.import_people
