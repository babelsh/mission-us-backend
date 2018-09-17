# Mission Us Rails API

![API-Missao-Us](https://img.shields.io/badge/MissionUs-Backend-blue.svg)
[![Build Status](https://travis-ci.org/babelsh/mission-us-backend.svg?branch=master)](https://travis-ci.org/babelsh/mission-us-backend)
![GitHub top language](https://img.shields.io/github/languages/top/babelsh/mission-us-backend.svg)

- [Dependencies](#dependencies)
- [Testing](#testing)
- [Setup](#setup)
- [Development](#development)
- [Usage](#usage)
  - [Requests](#requests)
    - [Trails](#trails)
    - [Tails/Activities](#tails/activities)
    - [Activities](#activities)
- [Deploy](#deploy)
- [Guides](#guides)

## Dependencies

- Ruby >= 2.5.1
- PostgreSQL 10.4

### MacOS

```sh
brew update
brew install postgres
gem install bundler
```

### Ubuntu

```sh
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib postgresql-server-dev-all cmake
gem install bundler
```

## Setup

```sh
bundle install
cp config/database.example.yml config/database.yml

echo "POSTGRESQL_PASSWORD='YourPassword'" >> .env
echo "POSTGRESQL_USERNAME='YourUserName'" >> .env

bin/rails db:setup
bin/rails db:migrate
bin/rails db:seed
```

## Testing

### Test

We use rspec framework to test our rails api:

```sh
bundle exec rspec
```

## Development

Run the local server api at http://localhost:3000 with:

```sh
bin/rails s
```

### Models

#### Creating new Model

```sh
bundle exec rails generate model ModelName column_name1:column_type1 column_name1:column_type1 ... column_name1:column_type1
```

see [rails generate](https://guides.rubyonrails.org/command_line.html#rails-generate)

Do correct associations.

#### Testing

Write that were created by the rails generate.

- write factories
- use [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) to test validators.


### Controlles/end-points

#### Creating new Controller/end-point

We are on v1, when create a new end-point create with `api::v1::`.

```sh
bundle exec rails generate scaffold_controller api::v1::name
```

This makes the code look like this:

```rb
module Api
  module V1
    class NameController < ApplicationController
      ...
    end
  end
end
```

Add resources to `routes.rb` file:

```rb
namespace 'api' do
  namespace 'v1' do
    ...
    resources :yor_controller_name
    ...
  end
end
```

#### Testing

Write the tests in the files that were created by the rails generate.

- test controller
- test requests
- test routing

see [rails generate](https://guides.rubyonrails.org/command_line.html#rails-generate)

## Usage

### Requests

#### Trails

- index

List all `trails` that `current_user` has association

do

```sh
http GET http://www.your_domain/api/v1/trails
```

returns

```json
[
    {
        "created_at": "2018-09-17T04:53:30.281Z",
        "description": "Frankly, my dear, I don’t give a damn.",
        "duration": 3,
        "id": 35,
        "updated_at": "2018-09-17T04:53:30.281Z"
    },
    {
        "created_at": "2018-09-17T04:53:30.525Z",
        "description": "You talking to me?",
        "duration": 4,
        "id": 36,
        "updated_at": "2018-09-17T04:53:30.525Z"
    }
]
```

- show

Get informations of one `trail` that `current_user` has association

do

```sh
http GET http://www.your_domain/api/v1/trails/4
```

returns

```json
{
    "created_at": "2018-09-17T04:53:30.281Z",
    "description": "Frankly, my dear, I don’t give a damn.",
    "duration": 3,
    "id": 35,
    "updated_at": "2018-09-17T04:53:30.281Z"
}
```

- create [WIP] (will be used by professional profiles)

- update [WIP] (will be used by professional profiles)

- delete [WIP] (will be used by professional profiles)

#### Tails/Activities

- index

List all `activities` that `current_user` and `trial:id` has association

do

```sh
http GET http://www.your_domain/api/v1/trails/1/activities
```

returns

```json
[
    {
        "created_at": "2018-09-17T04:53:30.281Z",
        "description":"this is a description",
        "id":2,
        "title":"this title is cool",
        "updated_at": "2018-09-17T04:53:30.281Z"
    },
    {
        "created_at": "2018-09-17T04:53:30.281Z",
        "description":"this is another description",
        "id":15,
        "title":"this tile isn't cool",
        "updated_at": "2018-09-17T04:53:30.281Z"
    }
]
```

- index

#### Activities

- index [WIP] (will be used by professional profiles)

- show [WIP] (will be used by professional profiles)

- create [WIP] (will be used by professional profiles)

- update [WIP] (will be used by professional profiles)

- delete [WIP] (will be used by professional profiles)

## Deploy

[WIP]

## Guides

- [rails guide](https://api.rubyonrails.org/)
- [shoulda matchers](https://github.com/thoughtbot/shoulda-matchers)
- [rspec](https://github.com/rspec/rspec-rails)
