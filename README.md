![WakeupCall](app/assets/images/alarm-logo.png)

# Getting Started
Visit your personal room service wakeup call at: [wakeup-call.herokuapp.com](http://wakeup-call.herokuapp.com)

## Since I Don't Want to Buy Anything

**1. Twilio API**
This app utilizes the Twilio API to make phone calls. But in order to grant outgoing calls to anybody, it requires monthly payment... so if you'd like to test this app with your phone number, please contact me and I can add you to my list of verified numbers that my trial account can call. Thanks!

**2. Heroku**
The Heroku server will sleep after about 30 minutes of inactivity. The app relies on a few workers to run delayed background jobs in order to hit the API and call you. If you would like my alarm clock to call you, make sure to visit the website (this wakes up the server) before the alarm time is met.

## Project Details
I was tasked with: "Please program a web-based alarm clock."

Intentionally left vague, it was up to me to determine what to build out in the given time constraints.

While much time was dedicated towards thinking and strategizing before a single keystroke was made on Sublime, this project was completed in about a day.

## Design
All assets, including logo, was originally created by me on Adobe Illustrator for SVG format.

## Tech & Methodologies

- Twilio API
- Rails
- Javascript, jQuery/Ajax
- HTML5/CSS3/Sass
- PostgreSQL
- ActiveRecord
- Delayed_job gem
- Bootstrap
- Git/Github
- REST/HTTP

## Notes for myself

To wake up Heroku Workers after deployment:

Hit this twice, until both workers are up and running the rake jobs command.
```
heroku ps
```
