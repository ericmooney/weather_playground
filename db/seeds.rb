# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


file_path = Rails.root.join("public", "sf.csv").to_s
zip_codes = Roo::Spreadsheet.open(file_path)
array_of_hashes = []
zip_codes.each({:zip_code => "zip",
  :city => "primary_city",
  :latitude => "latitude",
  :longitude => "longitude"}) {|row_hash| array_of_hashes << row_hash}

array_of_hashes.each do |hash|
  Location.create(hash)
end