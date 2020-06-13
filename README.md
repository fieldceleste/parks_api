_State/National Parks Api_


#### _By: Celeste Field_

## Project Goals
* _Be able to allow to allow users to view different state and national parks around the Us using a custom built API_

## End Points

| Functionality | API Call |
| ------------- | -------- |
| Get a list of all the parks |`GET` `/parks/` |  
| Get a list of parks by state name |`GET` `/search?query=florida`|  
| Get a list of all national parks |`GET` `/search?query=true`|  
| Get a particular park by id |`GET` `/search?query=42`|  
| Get a particular park by park name |`GET` `/search?query=Lake Town`|
| Get a random park | `GET` `/random` |
| Post a new park. | `POST` `/parks/?parks/?name=Home&state=Oregon&description=This is a great park full of green lush grass and lots of picnic tables for all. There is a lake near by for all to swim in. &national=false&established=2010` |
| Update a parks info. | `PUT` `parks/64/?&name=Lake Washington&state=Washington&description=This is a great park full of green lush grass and lots of picnic tables for all. There is a lake near by for all to swim in. &national=false&established=2010` |
| Delete a park | `DELETE` `/parks/64` |


## Future Features
* _Add in User interface and possibly authorization._

## Setup/Installation Requirements

* _Clone repository from Github: https://github.com/fieldceleste/parks_api.git_
* _In the Terminal type : `$ git clone` [https://github.com/fieldceleste/parks_api.git]_
* _Navigate to folder by typing  `$ cd parks_api` in terminal._
* _Open the file up in the code editior of choice_
* _Install all missing dependencies and Gems, then type `bundle install`._
* _You will need to run `bundle install` after each new Gem added to project._
* _Make sure to check which Ruby version you are running by typing `$ ruby -v`_
* _Make sure to check what Postgres version by typing `postgres --version` in terminal._
* _To start the database run `postgres` in the background terminal._
* _In a seperate terminal type `psql`, to start SQL._
* _To run a test using Rspec, type `rpsec` into the root page of the project._
* DATABASE INSTRUCTIONS - from the root directory of this project, run this command to start new database:
*         `rake db:setup`


* _To view project in browser type in terminal, `rails s`._
* _Navigate to localhost:3000_


## Known Bugs
_No known bugs at this time._

## Support and contact details
_If you have issues, questions, ideas, or concerns, please contact (fieldceleste@gmail.com)._

## Technologies Used/ System Dependencies

* >_Ruby on Rails_
* >_ActiveRecord_
* >_Git_
* >_GitHub_
* >_Rspec_
* >_ShouldaMatchers_
* >_Pry_
* >_postgres_
* >_SASS_
* >_Api's_

### License
## Legal

#### MIT License

### Copyright (c) 2020 Celeste Field

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.