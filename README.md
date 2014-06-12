SpreePrize
==========

A Spree extension for giveaways.

Active prizes will be displayed on the `/prizes` route of the spree application.
Adds a 'Prizes' tab to the spree admin panel.


Installation
------------

Add spree_prize to your Gemfile:

```ruby
gem 'spree_prize'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_prize:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_prize/factories'
```

