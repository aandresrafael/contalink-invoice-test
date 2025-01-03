# Contalink Back-end Rails Coding Test

This is a code challenge for Contalink job position. This rails app use Sidekiq, Sidekiq scheduler and redis to send an email with the top 10 day's sales.

## Requirements

1. Install redis `brew install redis`.

## Development environment.

To run this rails app you need:
1. Run `bundle install` to install all gems used for this project.

## Start scheduled job to send email with top 10 day's sales.
1. Open a terminal and start redis using `redis-server` command.
2. Open a termial and run `bundle exec sidekiq` to start sidekiq inside the rails app.
3. The email notification job is scheduled to run everyday at 7 AM  America/Mexico City timezone.

## Running API locally

To start this rails app locally you  need run `rails s` and once the server start, you can go to the `http://localhost:3000/invoices`, start_date and end_date parameters are required.


## Test

Using rspec to cover tests in the models and controller actions. Run `bundle exec rspec` .

## Questions

Let me know if  you have any questions.