class Show
 attr_accessor :name, :release_year, :description, :runtime, :language, :genre, :cast

   def self.today
     show_1 = self.new
     show_1.name = "Gilmore Girls"
     show_1.release_year = "2000"
     show_1.description = "Gilmore Girls is a show about a mother and daughter, and a mother and daughter. And coffee."
     show_1.runtime = "42-48 minutes per episode"
     show_1.language = "English"
     show_1.genre = "Dramedy"
     show_1.cast = "Kelly Bishop, Lauren Graham, Alexis Bledel"

     show_2 = self.new
     show_2.name = "TWD"
     show_2.release_year = "2009"
     show_2.description = "Braaaaaains."
     show_2.runtime = "45-50 minutes"
     show_2.language = "English"
     show_2.genre = "Horror"
     show_2.cast = "Andrew Lincoln, Norman Reedus"

     [show_1, show_2]
   end

end
