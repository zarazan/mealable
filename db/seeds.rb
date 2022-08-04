substance_names = [
  'Bok Choy',
  'Spaghetti',
  'Tomato'
] 

substance_names.each do |substance_name|
  Substance.create!(name: substance_name)
end
