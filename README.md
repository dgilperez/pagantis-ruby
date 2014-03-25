Pagantis ruby gem
======

This is a Ruby wrapper for Pagantis API.


Usage
======

First, you've to install the gem

    gem install pagantis-ruby

and require it

    require 'pagantis-ruby'


or add it to your Gem file

    gem 'pagantis-ruby'

Then you have to set your API key:

    Pagantis::Base.token = 'your-api-token'



Subscriptions and plans
======

Getting all existing plans in your account:

    plans = Pagantis::Plan.all

Getting plan details

    plan = Pagantis::Plan.find('pla_xxxxxxxxxx')






Copyright
======

Copyright (c) 2014 Telecoming Payment Solutions S.A.. See LICENSE for details.

