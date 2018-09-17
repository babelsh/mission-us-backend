# Mission Us Rails API

- [Dependencies](#dependencies)
- [Setup](#setup)
- [Development](#development)

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

#### Testnig

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

#### Testnig

Write the tests in the files that were created by the rails generate.

- test controller
- test requests
- test routing

see [rails generate](https://guides.rubyonrails.org/command_line.html#rails-generate)

## Usage

### Requests

#### Trails

##### index

List all `trails` that `current_user` has association

do

```sh
http GET http://www.your_domain/api/v1/trails
```

returns

```json
[
  {
    "id":"4",
    "description":"this is a description",
    "duration":"8",
  },
  {
    "id":78
    "description":"this is another description",
    "duration":"1",
  }
]
```

##### show

Get informations of one `trail` that `current_user` has association

do

```sh
http GET http://www.your_domain/api/v1/trails/4
```

returns

```json
{
  "id":"4",
  "description":"this is a description",
  "duration":"8",
}
```

##### create [WIP] (will be used by professional profiles)

##### update [WIP] (will be used by professional profiles)

##### delete [WIP] (will be used by professional profiles)

#### Tails/Activities

##### index

List all `activities` that `current_user` and `trial:id` has association

do

```sh
http GET http://www.your_domain/api/v1/trails/1/activities
```

returns

```json
[
  {
    "id":"4",
    "description":"this is a description",
    "title":"this title is cool",
  },
  {
    "id":78
    "description":"this is another description",
    "title":"this tile isn't cool",
  }
]
```

##### index

#### Activities

##### index [WIP] (will be used by professional profiles)

##### show [WIP] (will be used by professional profiles)

##### create [WIP] (will be used by professional profiles)

##### update [WIP] (will be used by professional profiles)

##### delete [WIP] (will be used by professional profiles)

## Deploy

[WIP]

## Guides

- [rails guide](https://api.rubyonrails.org/)
- [shoulda matchers](https://github.com/thoughtbot/shoulda-matchers)
- [rspec](https://github.com/rspec/rspec-rails)
