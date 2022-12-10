# /**
#      * Mikołaj wykupił pakiet wysyłkowy do prezentów, ale przyoszczędził na wersji premium.
#      * Przez to będzie musiał dopłacić 2 zł za każdą samogłoskę w adresie.
#      * Pomóż Mikołajowi i policz ile będzie musiał dopłacić, a policzoną wartość wypisz na ekranie.
#      * Adresy znajdziesz w przygotowanej liście, nie ma w nich polskich znaków.
#      */
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

adresses = [
Address.new("Serniczkowa", "4B", 2, "Krakow","02-326"),
Address.new("Pierniczkowa", "289A", 55, "Gdansk", "02-326"),
Address.new("Barszczykowa", "234", 5, "Rzeszow", "37-326"),
Address.new("Uszkowa", "43H", 5, "Wroclaw", "02-326"),
Address.new("Cukierkowa", "23I", 5, "Poznan", "02-326"),
]


counter = 0
adresses.each do |adress|
  adress.to_s.downcase.each_char do |char|
    counter += 1 if char =~ /[aeiouy]/
  end
end

p counter * 2
