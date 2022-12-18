
    #  * Mikołaj przygotował dodatkowe prezenty dla najmłodszego i najstarszego dziecka.
    #  * Pomóż mu znaleźć je w liście.
    #  * Wypisz na ekran znalezione dzieci wraz z informacja, które jest najstarsze, a które najmłodsze.
    require 'date'

    class ChildWithBirthDate
      attr_reader :name, :last_name, :birthdate

      def initialize(name, last_name, birthdate)
        @name = name
        @last_name = last_name
        @birthdate = birthdate
      end

      def to_s
        "#{name} #{last_name}, urodzony: #{birthdate} "
      end
    end


    kids = [ ChildWithBirthDate.new(
              "Jasiu",
              "Kowalski",
              Date.civil(2010, 12, 30)
      ),
      ChildWithBirthDate.new(
              "Kasia",
              "Nowak",
              Date.civil(2011, 11, 30)
            ),
      ChildWithBirthDate.new(
              "Asia",
              "Wisniewska",
              Date.civil(2010, 12, 31)
            ),
      ChildWithBirthDate.new(
              "Tomek",
              "Wojcik",
              Date.civil(2015, 6, 30)
            ),
      ChildWithBirthDate.new(
              "Tomek",
              "Zajac",
              Date.civil(2020, 12, 30)
            ) ]

    sorted =  kids.sort_by {|kid| kid.birthdate }
    puts "najstarszy: #{sorted[0]}"
    puts "najmłodszy: #{sorted[-1]}"




