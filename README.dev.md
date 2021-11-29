# README FOR DEVELOPMENT OF THIS GEM

## UNIT Testing
```bash
# Inside sync-rb
export API_KEY=<YOUR API KEY> # Set API Key env var
gem build # Just one time
gem install ./paybook-X.X.X.gem # Put the version from gem build
rake test # Run the tests
```

## Versioning and Release
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.


