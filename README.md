SpreeStaticContentI18n
======================

This gem enable localization for [spree_static_content](https://github.com/spree/spree_static_content) using [spree_i18n](https://github.com/spree/spree_i18n) .
For these reasons you need to add to your Gemfile the relative gems.

Installation
------------

Add spree_static_content_i18n to your Gemfile:

```ruby
gem 'spree_static_content', :github => 'spree/spree_static_content'
gem 'spree_editor', :github => 'spree/spree_editor' # if you want sexy editor.

gem 'spree_i18n', github: 'spree/spree_i18n', :branch => '2-1-stable'
gem 'globalize', github: 'globalize/globalize', branch: 'rails4'
gem 'paper_trail', github: 'airblade/paper_trail'

gem 'spree_static_content_i18n', github: 'geekcups-team/spree_static_content_i18n'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_static_content_i18n:install
```

__IMPORTANT: If you plant to use spree_editor, make sure to select CKEditor and add to the configuration the ids for the textarea (e.g.: __

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
