#!/bin/sh

cd /usr/src/app

bundle install

rake db:migrate RAILS_ENV=production

rails server -b 0.0.0.0 -e production