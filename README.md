# Paybook

## Requirements

HTTPARTY => Install HTTPARTY gem
```ruby
gem install 'httparty'
```


## Installation Paybook Gem

Install the Paybook API Gem Using this command into the terminal / cmd:

```ruby
gem install 'paybook'
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
