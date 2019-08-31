MakersBnB
=========

This is a clone of AirBnB, built in a week, that allows users to list spaces they have available, and to hire spaces for the night.

# The solution

We used Sinatra and Ruby/erb for the front end. As our first group project, we wanted to keep it simple whilst still building a working MVP. Having to make manual database queries really strengthened our understanding about what was happening under the hood.

## Local quickstart

First, clone this repository. Then:
```console
cd MakersBnB
bundle install
rackup
```
visit http://localhost:3000/ (which will likely be the route). However if not, replace '3000' with whatever the server gives you.

## Running tests
When in the main project directory, run:
```console
rspec
```

## Screenshot of some of the features
1. Sign up  

<img src="./public/images/screen_request_a_booking.png =250x250" width="250" height="250">

2. View spaces and filter by available dates  

![List of property spaces and a form to fill out to filter the spaces by date](./public/images/screenshot_spaces.png =250x250)

3. Request a booking  

![Form to request a booking of a property space](./public/images/screen_request_a_booking.png =250x250)

## Contribution

If you would like to contribute to this project, please submit a pull request at our github page.
