# encoding: UTF-8

brands = %w(Chevrolet Citroën Fiat Ford Honda Hyundai Kia Mitsubishi Nissan Peugeot Renault Toyota Volkswagen)

brands.each do |name|
  Brand.find_or_create_by name: name
end

puts "#{brands.size} car makes created"
