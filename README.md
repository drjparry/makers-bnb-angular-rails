# Makers BnB Improved

## Repo Badges

[![Build Status](https://travis-ci.org/ggwc82/makers-bnb-angular-rails.svg?branch=master)](https://travis-ci.org/ggwc82/makers-bnb-angular-rails)[![Coverage Status](https://coveralls.io/repos/github/ggwc82/makers-bnb-angular-rails/badge.svg?branch=master)](https://coveralls.io/github/ggwc82/makers-bnb-angular-rails?branch=master)


## Description

It's Makers BnB, but Improved! We've rebuilt this project using Rails on the backend and AngularJS on the frontend. 


## Team Members
- Rebecca Piper
- Elaine Finn
- Yan-Yi Li
- David Parry
- Godfrey Chiu


## Technology Stack

- AngularJS
- Ruby on Rails


## Installation Instructions
- Clone the repo
- bundle install
- rake db:create
- rake db:migrate
- npm install bower -g
- rake bower:install
- rails s
- Go to http://localhost:3000 in your browser


## Testing Instructions

### RSpec (Rails - unit and feature tests)
- rails g rspec:install (optional)
- rspec

### Karma (JavaScript/Angular - unit testing)
- npm install karma (sudo if needed)
- npm install -g karma-cli (optional)
- npm install karma --save-dev
- rails s (separate tab)
- ./node_modules/karma/bin/karma start

### Protractor (JavaScript/Angular - e2e testing)
- npm install -g protractor
- webdriver-manager update --standalone
- webdriver-manager start --standalone (keep this running in a separate tab)
- rails s (separate tab)
- protractor protractor.conf.js (another tab)


## Implementation

:construction:


## User Stories

### MVP

:construction:

### Nice to haves

:construction: