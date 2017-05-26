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