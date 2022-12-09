# * Mikolaj postanowil przygotować w tym roku potrawy swiateczne samodzielnie.
#      * Dostał od mamy listę przepisów, dzieki którym stworzy pyszne, tradycyjne potrawy!
#      * Ale najpierw musi pójść na zakupy. Pomoż Mikołajowi i wygeneruj listę zakupów z listy przepisów.
#      * Dla ułatwienia załóż, że wszystkie produkty są w tych samych jednostkach, wiec po prostu podlicz ilości.
#      * P.S. Nie polecam używać tych przepisów, zostały one maksymalnie uproszone do celu zadania. :D


     class Recipe
       attr_reader :ingrediens, :name

        def initialize(name, ingrediens, description)
          @ingrediens = ingrediens
        end
     end


      list = [
        Recipe.new("Murzynek", {"Maka" => 300, "Cukier" => 100, "Jajka" => 3, "Czekolada" => 200, "Masło" => 200 }, "Piekarnik nagrzać do temp. 160 stopni [...]"),
        Recipe.new("Piernik", {"Maka" => 500, "Cukier" => 180, "Miód" => 250, "Jajka" => 1, "Masło" => 150, "Mleko" => 80 }, "Piekarnik nagrzać do temp. 180 stopni [...]"),
        Recipe.new("Sernik", {"Maka" => 100, "Cukier" => 200, "Jajka" => 6, "Ser" => 1000, "Masło" => 200 }, "Piekarnik nagrzać do temp. 160 stopni [...]"),
        Recipe.new("Uszka", {"Maka" => 300, "Woda" => 100, "Jajka" => 1, "Sól" => 1, "Masło" => 200, "Grzyby" => 150, "Cebula" => 1 }, "Zarobić ciasto z mąki, wody, soli i jajka [...]"),
        Recipe.new("Barszcz", {"Buraki" => 1000, "Bulion" => 1500, "Zakwas" => 200, "Sól" => 1 }, "Buraki rozdrobnić i zagotować z bulionem [...]"),
        Recipe.new("Pierogi", {"Maka" => 300, "Woda" => 100, "Jajka" => 1, "Kapusta" => 500, "Grzyby" => 50, "Cebula" => 1 }, "Zarobić ciasto z mąki, wody, soli i jajka [...]"),
        Recipe.new("Karp", {"Karp" => 1000, "Maka" => 50, "Mleko" => 500, "Sól" => 1, "Olej" => 500 }, "Rybę umyć i pokroić w dzwonki [...]")
      ]

      hash = {}
      list.each do |element|
        element.ingrediens.each { |key, value| hash.has_key?(key) ? hash[key] += value : hash[key] = value }
      end

      hash.each { |key, value| puts "#{key}: #{value}" }
