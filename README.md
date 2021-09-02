<p align="center">
  <a href="#">
   <img alt="Secret Friend" src="https://github.com/tiagoleal/quickchat/blob/master/app/assets/images/logo.png?raw=true" width="200">
  </a>
</p>

<p align="center">
  <a href="https://github.com/tiagoleal/quickchat">
    <img alt="Current Version" src="https://img.shields.io/badge/version-1.0.0 -blue.svg">
  </a>
  <a href="https://ruby-doc.org/core-2.7.2/">
    <img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-2.6.2 -green.svg" target="_blank">
  </a>
  <a href="https://guides.rubyonrails.org/5_2_release_notes.html">
    <img alt="" src="https://img.shields.io/badge/Rails-~> 5.2.6-blue.svg" target="_blank">
  </a>
  
</p>

Quick chat consists of a messaging app similar to slack,that allows real-time chat.

## Screenshot

![](https://github.com/tiagoleal/quickchat/blob/master/app/assets/images/slack.gif?raw=true)

## Stack the Project

- **Action Cable**
- **Materialize**
- **Redis**
- **Devise**
- **Postgresql**
- **Rspec(TDD)**
- **Coverage**
- **RubyCritic**
- **Attractor**

## Features

- **Channels:** Permit to create a new channel and send to general message.
- **Users:** Permit to send private message to user.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You must have installed on your machine:

- Docker
- Docker Compose

### Installing

First step is to install the docker service:

```bash
#Linux: ubuntu,Mint
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo apt install docker-compose

# Fedora
$ sudo dnf update -y
$ sudo dnf install docker-ce
$ sudo dnf -y install docker-compose
```

For test if the service was installed with succeed, you can run the command for to check de version of docker:

```bash
$ docker --version
#Must be have the docker version: Docker version 18.06.0-ce
$ docker-compose --version
#Must be have the docker-compose version: docker-compose version 1.22.0
```

## First steps

Follow the instructions to have a project present and able to run it locally.
After copying the repository to your machine, go to the project's root site and:

1.  Construct the container

```
docker-compose build
```

2.  Create of Database

```
docker-compose run --rm app bundle exec rails db:create
```

3. Without turning off the server, open a new window and run the migrations

```
docker-compose run --rm app bundle exec rails db:migrate #if necessary populate database
```

4.  Run the project

```
docker-compose up - d
```

## Running the tests

To run the tests, you must run the docker container through the command:

```
docker-compose run --rm app bundle exec rspec
```

## Running the Ruby Critic

To Verify the quality report of your Ruby code, you must run the docker container through the command:

```
docker-compose run --rm app bundle exec rubycritic 
```
## Running the Attractor

To Verify a code complexity metrics visualization and exploration tool, you must run the docker container through the command:

```
docker-compose run --rm app bundle exec attractor report 
```

## Authors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
[<img src="https://avatars1.githubusercontent.com/u/5727529?s=460&v=4" width="100px;"/><br /><sub><b>Tiago Leal</b></sub>](https://github.com/tiagoleal)<br />
