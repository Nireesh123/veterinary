json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :type_of_pet, :breed, :age, :weight
  json.url pet_url(pet, format: :json)
end
