def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  pets = shop[:pets].select { |pet| pet[:breed] == breed}
  return pets
end

def find_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets].find { |pet| pet[:name] == pet_name}
  return pets
end

def remove_pet_by_name(pet_shop, pet_name)
  pet_to_be_removed = find_pet_by_name(pet_shop, pet_name)
  pet_shop[:pets].delete(pet_to_be_removed)
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  if new_pet = true
    customer[:pets] << new_pet
  else
    return 0
  end
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] > new_pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  add_pet_to_customer(customer, pet)
  pet_shop[:admin][:pets_sold] += 1
   #the above only works for the  __pet_found test but not the __pet_not_found
   #it will always return 1 instead of 0
  
  #pet_shop[:admin][:total_cash] += pet_shop[:pets][pet][:price]
   # calling fuction total_cash will not accept += method.
   #but calling the whole thing like above will not work with the test because it calls total_cash which always returns 1000
   #Also, the above syntax gives me error "no implicit conversion of hash into Integer"
   #was tested in irb (.class), both are integers
   #also doesn't work if I store it in a variable and/or call .to_i
end