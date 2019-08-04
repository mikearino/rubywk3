# Volunteer tracker

#### A program that tracks projects and the volunteers working on them.

#### By **Mike Lofgren**   

## Description

A program for non-profit employees to add projects and volunteers to projects.

### Specs
| Spec                                    | Input                            | Output                                    |
| :---------------------------------------| :------------------------------- | :---------------------------------------- |
| The user clicks add new project  |      Click on add new project          | A new view shows to input project name                                     |
| The user click on an existing project | Click on a project name            | A new view shows Projecr name and volunteers|                                           |
| The user inputs a project name       | Cats                             |Available projects = "cats"                            |
| The user can click on a project from the home screen    | Clicks on "cats"                 |A new view shows project name and volunteer entry form                         |
| The user can add a name    | inputs Steve, clicks add volunteer                  |Shows a list of volunteers                       |
| The user can click on a volunteer to edit the name    | Clicks on name          |Shows a rename volunteer field with an option to delete a volunteer                     |
| The user can click delete volunteer    | Clicks on delete button            |Returns to add volunteer form                      |



## Setup/Installation Requirements

1. To run this program, open a web browser.
2. Go to https://github.com/mikearino/rubywk3.
3. Clone down the repository.
4. In terminal bash enter createdb volunteer_tracker
5. Enter psql volunteer_tracker < database_backup.sql
6. Enter createdb -T volunteer_tracker volunteer_tracker_test
7. Open another terminal window and navigate to the projects root directory. Enter ruby app.rb.
8. Open a web browser and navigate to localhost:4567

## Known Bugs
* No known bugs at this time.

## Technologies Used
  * Ruby
  * Sinatra
  * Capybara

## Support and contact details

If there are any questions, bugs or concerns, please contact mikeylofgren@gmail.com

### License

*This software is licensed under the MIT license*

Copyright (c) 2019 **Mike Lofgren**
