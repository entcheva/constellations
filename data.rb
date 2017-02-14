require 'csv'
require 'pry'
# csv = CSV.read('./db/hygdata_v3.csv', :headers=>true)
# puts csv['name'] #=>["Raja", "Mathew", "harin", "Soumi"]
counter = 0
stars = CSV.foreach("./db/hygdata_v3.csv") do |row|
  binding.pry
end
puts counter
