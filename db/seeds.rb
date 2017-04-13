# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Snippet.create [
  {title: 'html doctype', code: '<!doctype html>'},
  {title: 'postgresql install', code: %(
    brew install postgresql
    mkdir -p ~/db/postgresql
    initdb -D ~/db/postgres/data -EUTF-8
    --locale=en_US.UTF-8
    )},
    { title: 'responsive design', code: '<meta name="viewport" content="width=device-width, initial-scale=1">'}
]
