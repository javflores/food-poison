# Food Poisoning  [![Build Status](https://travis-ci.org/javflores/food-poisoning.svg?branch=master)](https://travis-ci.org/javflores/food-poisoning)

## Setup

- Download Elixir:
http://elixir-lang.org/install.html
- Setup Phoenix:
http://www.phoenixframework.org/docs/installation

- Setup PostgreSQL:
https://wiki.postgresql.org/wiki/Running_%26_Installing_PostgreSQL_On_Native_Windows#Installation

- Setup Elm:
http://elm-lang.org/install

cd into the food_poisoning folder and run:
- mix deps.get
- npm install
- mix ecto.create: to create the database
- mix ecto.migrate: to create tables
- mix run priv/repo/seeds.exs: to seed the data

- mix phoenix.server to start the app.

### Troubleshooting

If issues with the database:
Don't know the password, change it!
http://dba.stackexchange.com/questions/44586/forgotten-postgresql-windows-password

Try setting psql into your system path variable.

If issues with Babel:
npm install --save-dev babel-preset-es2015

If issues with any node module try:
npm cache clean
and then npm install again.
