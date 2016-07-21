[![Coverage Status](https://coveralls.io/repos/github/rahulrama/arrrgbnb/badge.svg?branch=master)](https://coveralls.io/github/rahulrama/arrrgbnb?branch=master)

[![Build Status](https://travis-ci.org/rahulrama/arrrgbnb.svg?branch=master)](https://travis-ci.org/rahulrama/arrrgbnb)

This is the repo for the Week 6 Challenge - 'airbnb', presented to students at Makers Academy.
This file is WIP and will be updated continually during the course of the project.

AUTHORS:
-------

Team Arrrgonaut: Adam Skuse, Rahul Ramakrishna, Richard Watkins, Robin Heathcote and Grig Gerogiokas

![The Arrrgonauts](https://github.com/rahulrama/arrrgbnb/blob/master/app/public/images/arrrgonauts.png)

DOMAIN MODEL
------------
+![Domain Model](https://github.com/rahulrama/arrrgbnb/blob/master/app/public/images/arrrgbnb_domain_model.png)

TECHNOLOGIES
------------
A range of technologies have been used to create this AirBnB clone, these technologies include:
- DataMapper
- PostgresSQL
- Sinatra
- bcrypt
- travis-ci
- coveralls
- rspec

INSTALLATION
------------
Clone repo to a local directory, then run bundle to update your gems. The next step is to install PostgresSQL.

Create 2 databases called arrrgbnb_development and arrrgbnb_test using the command create database arrrgbnb_test;

Run rackup from your commandline and visit http://localhost:9292/, this will take you to the arrgbnb homepage.

Sign up add a property and have a play with your new favourite way to book your next trip.


USER STORIES:
------------

```
As a user,
So that I can use the website,
I want to be able to sign up.

As a user,
So that I can use the website after sign up,
I want to be able to log in.

As a user,
So that I can protect my account,
I want to be able to log out.

As a user,
So I can keep my personal details up to date,
I want to be able to edit them.

As a user,
So that I can rent out a property,
I want to be able to create a property on the system.

As a user,
So I can keep info on my properties up to date,
I want to be able to update their information.

As a user,
So that I can attract tenants,
I want to be able to list my properties.
```

DOMAIN MODEL:
------------
![Domain Model](https://github.com/rahulrama/arrrgbnb/blob/master/public/images/arrrgbnb_domain_model.png)

TEST
----
Type rspec into the commandline and this will run the tests. Below is an example of one of these tests:

feature 'edit property details' do
	scenario 'can edit an existing property' do
    sign_up
		create_property_1
	  expect(current_path).to eq '/property/all'
    click_button 'Dashboard'
    click_button 'Edit'
    fill_in :Title, with: 'Manor'
    click_button 'Confirm Changes'
    expect(page).to have_content('Manor')
	end
end

LICENCE
----
All offers please refer to our legal team.
