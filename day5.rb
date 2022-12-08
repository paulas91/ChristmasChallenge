# * Pomóż Mikołajowi w rozwożeniu prezentów!
# * Posortuj listę adresów dzieci po miastach alfabetycznie,
# * tak, żeby Mikołaj mógł wygodnie zaplanować plan podrózy.
# * Posortowaną listę adresów wypisz na ekranie.
# * To bardzo proste zadanie! Więc dodatkowym plusem będzie
# * wykonanie sortowania w jednej linijce. :D

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
end

addresses = [
  Address.new("Swiateczna", "234", 5, "Warszawa", "02-326"),
  Address.new("Choinkowa", "34A", 1, "Krakow", "31-326"),
  Address.new("Mikolaja Swietego", "87", 3, "Rzeszow", "40-326"),
  Address.new("Bombkowa", "214", 55, "Gdansk", "15-326"),
  Address.new("Prezentowa", "543", 765, "Warszawa", "02-326"),
  Address.new("Serniczkowa", "4B", 2, "Krakow","02-326"),
  Address.new("Pierniczkowa", "289", 55, "Gdansk", "02-326"),
  Address.new("Barszczykowa", "234", 5, "Rzeszow", "37-326"),
  Address.new("Uszkowa", "43H", 5, "Wroclaw", "02-326"),
  Address.new("Cukierkowa", "23", 5, "Poznan", "02-326"),
]


puts addresses.sort_by(&:city)

