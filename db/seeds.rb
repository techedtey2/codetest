["Academic", "Career", "Financial", "Personal", "Practical", "Social"].each do |type|
  Type.find_or_create_by(name: type)
end