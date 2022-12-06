/**
     * Mikołaj postanowił w tym roku skorzytać z pomocy nowoczesnych technologii
     * i zamiast rozwozić wszystkie prezenty, niektóre przesłać przez Internet.
     * Do tego celu musi zamienić nazwy prezentów w strumienie bitów!
     * Pomoż Mikołajowi! Przygotuj kod, który zamieni nazwy prezentów na ciąg zer i jedynek.
     * Dla każdej litery nazwy prezentu znajdz kod UTF-8, a później zamień go na system binarny.
     * Dla każdego prezentu wypisz na ekran ciąg zer i jedynek. Każdy prezent w oddzielnej linijce.
     * Możesz napisać funkcję zamieniającą numer znaku na system binarny samodzielnie,
     * albo znaleźć odpowiednią funkcję w bibliotece Twojego języka.
     */
       

list_of_presents = ["Parfum", "Socks", "Sweather", "Cup",
  "Hat", "Tea", "Coffee", "Clock", "Bag",
  "Book", "Wallet", "Cream", "Earrings"]

list_of_presents.each do |present|
  bin = []
  present.each_char { |char| bin << char.ord.to_s(2) }
  puts "#{present}: #{bin.join(" ")}"
end
