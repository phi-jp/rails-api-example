# rails-api-example
rails-api-example


## setup rails

```
$ rails new . --api
```

## setup user

```
$ bin/rails g scaffold user name email
$ bin/rake db:migrate
```

## add user

```
$ bin/rails c
> User.create(name:'phi', email:'phi1618jp@gmail.com')
```

## launch server

```
$ bin/rails s
```

access to <http://localhost:3000/users>


## setup rspec

add gem

```
group :test do
  # Use RSpec for specs
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end
```

update bundle

```
$ bundle install
```

run the rspec installer

```
$ bin/rails g rspec:install  
```

## setup cors

config/initializers/cors.rb

```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins 'example.com'
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```


## default

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
