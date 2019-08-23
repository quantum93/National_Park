# _National Park Application_

#### _Project for Week 12 at the coding school, Epicodus, written on August 23, 2019._
_Parks Lookup: Create an API for state and national parks. The API will list state and national parks._

#### By _**Tae Lee**_

# Description
_This application successfully returns responses for API calls for national park list of 50 states of USA.
It has only backend logic for API and ready to do with front-end interface._

# Database
_The site should have functionality to list states. All state has id and state name and all national park has id, state_id and park name. The state and national park is using the one-to-many relationship with foreign key in DB schema. You can include other columns of your choosing as well. For initialization, we executed "rails new National_Park --api -d postgresql -T"_

# Scopes
_This site should use scopes to display the following information on the site:_
_The state with the largest number of national parks._
_A suggestion of state to visit by random selection_

# Seeding
_This project should include seed data for 50 states with their national parks.
We use custom seed feature to seed the database._

# route of API
        Prefix    Verb     URI Pattern                   Controller#Action             parameters
       v1_parks   GET     /v1/parks(.:format)             v1/parks#index
                  POST    /v1/parks(.:format)             v1/parks#create
        v1_park   GET     /v1/parks/:id(.:format)         v1/parks#show
                  PATCH   /v1/parks/:id(.:format)         v1/parks#update
                  PUT     /v1/parks/:id(.:format)         v1/parks#update
                  DELETE  /v1/parks/:id(.:format)         v1/parks#destroy
      v1_states   GET     /v1/states(.:format)            v1/states#index
                  POST    /v1/states(.:format)            v1/states#create
       v1_state   GET     /v1/states/:id(.:format)        v1/states#show
                  PATCH   /v1/states/:id(.:format)        v1/states#update
                  PUT     /v1/states/:id(.:format)        v1/states#update
                  DELETE  /v1/states/:id(.:format)        v1/states#destroy
  v1_most_parks   GET     /v1/most_parks(.:format)        v1/states#most_state
v1_random_place   GET     /v1/random_place(.:format)      v1/states#suprising_state
      v1_search   GET     /v1/search(.:format)            v1/states#search             state_name

# API Versioning instructions
https://chriskottom.com/blog/2017/04/versioning-a-rails-api/
_URL segment: a version slug in the resource identifier, e.g. /v1/users/100_

## Setup/Installation Requirements
* _postgres DB installation for this project
  (if your Postgres DB is not starting at login,
  please execute "pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start" on terminal._
* _Open terminal and type 'git clone https://github.com/quantum93/National_Park.git'_
* _Navigate to the project directory using cd in terminal_
* _Open project in text editor (atom .)_
* _Type 'bundle install' in terminal to load Gems
* _rake db:create_
* _rake db:migrate_
* _rails s_
* _rake db:seed_
* _rails server_
* _open http://localhost:3000 in a web browser_
* _To run request tests, type 'rspec' in terminal_

* _for database backup, please execute followings in terminal,_
* _pg_dump [YOUR DATABASE NAME] > database_backup.sql_
* _for database restore after clone, please execute followings in terminal_
* _createdb [DATABASE NAME]_
* _psql [DATABASE_NAME] < database_backup.sql_
* _createdb -T [DATABASE NAME] [TEST DATABASE NAME]_

## Support and contact details

_Please contact us if you have any issues at: taebumlee@gmail.com_

## Technologies Used
* Ruby 2.6.3
* ActiveRecord
* Bootstrap
* Rspec
* Faker
* FactoryBot
* Atom
* GitHub
* Postgres DB 11.1
* for faker practice, use the faker information on https://www.rubydoc.info/gems/faker/1.6.6#fakervehicle site for test.

## Specs
| ------------------------------------------------------------------------------------------------------------------------:|
| Behavior                                                       | Input                    | Output                       |
| -------------------------------------------------------------- |:------------------------:| ----------------------------:|
| Create API Files and directories                               | rails new app_name --api -d postgresql -T               |
| Bundling gems for this app                                     | bundle install                                          |
| Setting up Rspec                                               | bundle exec rails generate rspec:install                |
| Add database                                                   | rake db:create                                          |
| Add State table in DB                                          | rails g migration add_states_table                      |
|                                                                | rake db:migrate                                         |
| Mirror the changes in our test database.                       | rake db:test:prepare                                    |
| Add Park table in DB                                           | rails g migration add_parks_table                       |
|                                                                | rake db:migrate                                         |
| Add foreign Key in parks table                                 | rails g migration add_foreign_key_for_parks             |
| database seed with custom seeding                              | rake db:seed                                            |
| Backup of database                                             | pg_dump National_Park_development > database_backup.sql |
| Creating endpoints for tables in DB (check with POSTMAN)       | rake routes                                             |
| Scope for the highest number of park in states                 |                                                         |
| Scope for the random state display                             |                                                         |
| Create versioning feature for API                              |                                                         |
| Create custom endpoint that accepts parameters (SEARCH route for state) |                                                |
| Create exception handling for create and update of state table |                                                         |
| Perform request spec test for API with FactoryBot              |                                                         |
| -------------------------------------------------------------- |:------------------------:| ----------------------------:|

## License
_This software is licensed under MIT license._

Copyright (c) 2019 **_Tae Lee**
