# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating database'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    category: 'italian'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    category: 'japanese'
  },
  {
    name: 'Hungry',
    address: 'Main High St, Paris E1 Q',
    category: 'french'
  },
  {
    name: 'Pizza East',
    address: 'Long Island St, Goa ER 9II',
    category: 'chinese'
  },
  {
    name: 'Pizza Hut',
    address: '23 Daring St, Bali E1 00L',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
