# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

connection = ActiveRecord::Base.connection()
connection.execute("pragma foreign_keys = on")
connection.execute("INSERT INTO States(name, created_at, updated_at) VALUES
  ('Waiting', datetime(), datetime()),
  ('Working', datetime(), datetime()),
  ('Finished', datetime(), datetime())")