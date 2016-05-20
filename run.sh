#!/bin/sh

cd /usr/src/app

bundle install --without development test

rake db:migrate RAILS_ENV=production

rails server -b 0.0.0.0 -e production