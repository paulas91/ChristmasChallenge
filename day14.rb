

  #  * Lista prezentów od dzieci przychodzi w jednym długim napisie.
  #  * Napis zawiera dane w formacie: imię dziecka, spacja, prezenty rozdzielone spacjami, przecinek.
  #  * Pomóż Mikołajowi! Podziel napis na ciągi: imię dziecka => prezenty po przecinku.
  #  * Po ostatnim prezencie w linii nie powinno byc przecinka.

  giftsList = "Kuba klocki klawiatura dron quad, Alicja komputer samochod mysz, Janina ksiazka traktor, Tomek kuchenka koparka flamastry, "
  
  giftsList.split(", ").each do |gift|
    gifts = gift.split(" ")
    puts "#{gifts[0]} => #{gifts[1..].join(', ')}"
  end





