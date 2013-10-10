SpreeStaticContentI18n
======================

Introduction goes here.

Installation
------------

Add spree_static_content_i18n to your Gemfile:

```ruby
gem 'spree_static_content', :github => 'spree/spree_static_content'
gem 'spree_editor', :github => 'spree/spree_editor'

gem 'spree_i18n', github: 'riccardodegan-geekcups/spree_i18n', :branch => '2-1-stable'
gem 'globalize', github: 'globalize/globalize', branch: 'rails4'
gem 'paper_trail', github: 'airblade/paper_trail'

gem 'spree_static_content_i18n'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_static_content_i18n:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_static_content_i18n/factories'
```

Copyright (c) 2013 [name of extension creator], released under the New BSD License
