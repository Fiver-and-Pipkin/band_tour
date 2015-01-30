Band Tour
========

by Debbie Cravey

Band Tour allows people to update the favorite bands and keep track of the venues they have played. It also allows users to determine the best venues for their tastes based on the cumulative ratings users give to the artists who play there.

Installation
------------

Install Band Tour by first cloning the repository.
$ git clone http://github.com/dacravey/band_tour

```
Install all of the required gems:
* ('sinatra')
* ('sinatra-contrib', :require => "sinatra/reloader")
* ('sinatra-activerecord')
* ('rake')
* ('pg')

group(:test)
  * ('rspec')
  * ('shoulda-matchers')
```
$ bundle install

Using Active Record and Postgres:
* start Postgres
* in console, run:
```
rake db:schema:load

```

Start the webserver:
```
$ ruby app.rb
```

In your web browser, go to http://localhost:4567

Contribute
----------
- Issue Tracker: github.com/dacravey/band_tour/issues
- Source Code: github.com/dacravey/band_tour

Support
-------

If you are having issues, please let me know at: cinder.the.rogue@gmail.com

Bug reports
===========

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help with fixing the possible bug. I also welcome your help if you choose to fork and send a pull request.

https://github.com/dacravey/repository/issues

License
=======

MIT License. Copyright 2015 Debbie Cravey
