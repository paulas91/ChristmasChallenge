class Address
  attr_reader :street, :streets_number, :home_number, :city, :zip_code

  def initialize(street, streets_number, home_number, city, zip_code)
    @street = street
    @streets_number = streets_number
    @home_number = home_number
    @city = city
    @zip_code = zip_code
  end

  def to_s
    "#{street} #{streets_number} / #{home_number} , #{city}, #{zip_code} "
  end

  def to_h
    {
      street: street,
      streets_number: streets_number,
      home_number: home_number,
      city: city,
      zip_code: zip_code
    }
  end
end
addresses = [
  Address.new("Serniczkowa", "4B", 2, "Krakow", "02-326"),
  Address.new("Pierniczkowa", "289", 55, "Gdansk", "02-326"),
  Address.new("Pierniczkowa", "289", 55, "Gdansk", "02-326"),
  Address.new("Pierniczkowa", "289", 55, "Gdansk", "02-326"),
  Address.new("Barszczykowa", "234", 5, "Rzeszow", "37-326"),
  Address.new("Uszkowa", "43H", 5, "Wroclaw", "02-326"),
  Address.new("Uszkowa", "43H", 5, "Wroclaw", "02-326"),
  Address.new("Uszkowa", "43H", 5, "Wroclaw", "02-326"),
  Address.new("Cukierkowa", "23", 5, "Poznan", "02-326"),
]

require 'benchmark'

# addresses.uniq! { |address| [address.street, address.streets_number ] }
#  puts addresses.uniq { |address| address.to_s }
 Benchmark.bm do |x|
  x.report { 100.times { addresses.uniq { |address| address.to_s } }}
  x.report { 100.times { addresses.uniq { |address| address.to_h } }}

  x.report { 100.times { addresses.uniq { |address| [address.street, address.streets_number, address.home_number, address.city, address.zip_code] }} }
 end




