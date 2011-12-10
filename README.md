# Track Plugins

Plugin collection for the rack based nano framework [Track](http://github.com/larskuhnt/track).

## List of available plugins

### ORM

* ActiveRecord
* Sequel

## Install

Add the following line to your Gemfile

    gem 'track-plugins'

or install it with rubygems

    gem install track-plugins

## Usage

require the plugin you want to use and call `Track#use` _before_ you boot Track, i.e.:

```ruby
require 'track'
require 'track/sequel'

Track.use Track::Sequel
Track.boot! File.expand_path('..', __FILE__)

DB = Track::Sequel.db
DB << "SET CLIENT_ENCODING TO 'UTF8';"
```
## Author

[Lars Kuhnt](http://www.github.com/larskuhnt)
Copyright (c) 2011

## License

Published under the MIT License.

See [LICENSE](LICENSE) for details.
