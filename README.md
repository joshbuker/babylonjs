# Babylonjs

Test application with two goals:

1. Test [athix/rails-template](https://github.com/athix/rails-template) in
preparation for Aeon Splice using Rails.
2. See if BabylonJS, VueJS, and Rails can be combined to create a game engine.

![](README.png?raw=true)

Successful on both accounts, and Aeon Splice is now being worked on in a private
repository.

## Running locally bare-metal

### Requirements

* [RVM](https://rvm.io/rvm/install)
* [NVM](https://github.com/nvm-sh/nvm#install--update-script)
* [Yarn](https://yarnpkg.com/en/docs/install)
* [PostgreSQL](https://www.postgresql.org/download)

### Build

* `rvm install 2.6.5`
* `rvm use`
* `nvm install 13.0.1`
* `nvm use`
* `gem install bundler`
* `bundle install`
* `yarn install --check-files`

### Setup

* Create: `rails db:create db:migrate db:seed`
* Recreate: `rails db:drop db:create db:migrate db:seed`

### Running Locally

* Interactive console: `rails c`
* Specs: `rspec spec`
* Server: `rails s`

## Running locally via Docker

### Requirements

#### Windows

* [Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/)

#### Mac OS X

* [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)

#### Linux

* [Docker Engine](https://docs.docker.com/install/#server)
* [Docker Compose](https://docs.docker.com/compose/install/)

### Build

* `docker-compose build`

### Setup

* Create: `docker-compose run web rails db:create db:migrate db:seed`
* Recreate: `docker-compose run web rails db:drop db:create db:migrate db:seed`

### Running Locally

* Interactive console: `docker-compose run web rails c`
* Specs: `docker-compose run web rspec spec`
* Server: `docker-compose up`
