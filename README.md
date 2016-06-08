# Paybook

## Requirements

HTTPARTY => Install HTTPARTY gem
```ruby
gem 'httparty'
```


## Installation Paybook Gem

Add this line to your application's Gemfile:

```ruby
gem install paybook
```

## Usage

Add the gem to your Project

```ruby
require 'paybook'
```

Then Instance the Class API passing Our API KEY into the method new

```ruby
paybook = Paybook::Api.new("API KEY GOES HERE")
```

Then You Can Execute all the methods inside the class API example:

```ruby
paybook.user_list
```
