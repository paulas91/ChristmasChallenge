
   #   * Mikołaj postanowił w tym roku skorzystać z pomocy nowoczesnych technologii.
   #   * Zamiast zastanawiać się, komu jaki prezent dostarczyć postanowił skorzystać z programu.
   #   * Pomoż Mikołajowi!
   #   * Przygotuj kod, który z listy dostępnych prezentów wylosuje 3 prezenty i wypisze na ekranie.
   #   * Odpal program kilka razy - sprawdź, czy na pewno losuje za kazdym razem inne prezenty!
   #   * Wylosowane prezenty wypisz na ekranie. Zadbaj o to, żeby wylosowane prezenty były unikalne.

class Present
  LIST = ["Perfume", "Socks", "Sweater", "Cup",
        "Hat", "Tea", "Coffee", "Clock", "Bag",
        "Book", "Wallet", "Cream", "Earrings"]

  def self.draw
     LIST.sample(3)
  end
end

puts Present.draw





