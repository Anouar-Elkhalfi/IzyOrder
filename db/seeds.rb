puts "Cleaning database..."
MenuItem.destroy_all

puts "Creating menu items..."

menu_items = [
  { name: "Classic Burger", description: "A classic beef burger with lettuce, tomato, and cheese.", price: 8.99 },
  { name: "Cheese Burger", description: "A juicy beef burger topped with melted cheddar cheese.", price: 9.99 },
  { name: "Bacon Burger", description: "A savory beef burger with crispy bacon and BBQ sauce.", price: 10.99 },
  { name: "Veggie Burger", description: "A delicious vegetarian burger with a blend of vegetables and spices.", price: 7.99 },
  { name: "Chicken Burger", description: "A grilled chicken burger with lettuce, tomato, and mayo.", price: 9.49 },
  { name: "Double Burger", description: "Two beef patties stacked with cheese and all the fixings.", price: 12.99 },
  { name: "Spicy Burger", description: "A beef burger with a spicy kick, topped with jalapenos and pepper jack cheese.", price: 10.49 },
  { name: "BBQ Chicken Burger", description: "A grilled chicken burger with BBQ sauce and crispy onion rings.", price: 10.99 },
  { name: "Mushroom Swiss Burger", description: "A savory beef burger topped with sauteed mushrooms and Swiss cheese.", price: 11.49 },
  { name: "Avocado Burger", description: "A beef burger topped with fresh avocado slices and a creamy aioli sauce.", price: 11.99 }
]

menu_items.each do |attributes|
  menu_item = MenuItem.create!(attributes)
  puts "Created #{menu_item.name}"
end

puts "Finished!"
