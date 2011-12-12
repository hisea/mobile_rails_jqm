mobile_rails_jquery_mobile
-------

jQuery Mobile gem for Rails 3.1 with asset pipeline, also includes some generator to work with mobile_rails gem.

This gem is currently based on jQuery 1.0 final.

To install this gem simply include this in your Gemfile:

```ruby
gem 'mobile_rails_jqm'
```
Generating mobile layout for mobile_rails gem
--------

You can generate the layout as well as javascripts and stylesheets manifest files using:

```
$ rails g  mobile_rails_jqm:install
``` 

If you prefer haml:

```
$ rails g  mobile_rails_jqm:install --haml