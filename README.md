![WakeupCall](app/assets/images/alarm-logo.png)

# Getting Started
Visit the web-app at wakeup-call.herokuapp.com

## Since I Don't Want to Buy Anything

**1. Twilio API**
This app utilizing the Twilio API to make phone calls. But to grant outgoing calls to anybody, that requires that I pay up, per month. Since this is a hobby project, if you would like to personally test this app with a phone call to yourself please contact me and I can verify your phone number so that the API can call you through my app.

**2. Heroku**
The Heroku server will sleep after inactivity. The app relies on a few workers to run delayed background jobs in order to hit the API and call you. If you would like to test this functionality, please contact me.

### Notes

To wake up Heroku Workers:

Hit this twice, until both workers are up and running the rake jobs command.
```
heroku ps
```

# Project Details
I was tasked with: "Please program a web-based alarm clock."

Intentionally left vague, it was up to me to determine what to build out in the given time constraints.

While much time was dedicated towards thinking and strategizing before a single keystroke was made on Sublime, this project was completed in about a day.

## Design
All assets, including logo, originally created by me on Adobe Illustrator for SVG format.

## Tech & Methodologies

- Twilio API
- Rails
- Javascript, jQuery/Ajax
- HTML5/CSS3/Sass
- PostgreSQL
- Bootstrap
- Git/Github
- REST/HTTP