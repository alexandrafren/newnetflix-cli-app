class Newnetflix::Show
 attr_accessor :name, :release_year, :show_description, :runtime, :language, :genre, :cast

   def self.today
     #scrapes data from whats-on-netflix.com and returns new shows added each day
     doc = Nokogiri::HTML(open("https://www.whats-on-netflix.com/whats-new/"))
     show_html = doc.css(".content")
     shows = []
     show_1 = self.new
     show_1.name = "Gilmore Girls"
     show_1.release_year = "2000"
     show_1.show_description = "Gilmore Girls is a show about a mother and daughter, and a mother and daughter. And coffee."
     show_1.runtime = "42-48 minutes per episode"
     show_1.language = "English"
     show_1.genre = "Dramedy"
     show_1.cast = "Kelly Bishop, Lauren Graham, Alexis Bledel"
     shows << show_1

     show_2 = self.new
     show_2.name = "TWD"
     show_2.release_year = "2009"
     show_2.show_description = "Braaaaaains."
     show_2.runtime = "45-50 minutes"
     show_2.language = "English"
     show_2.genre = "Horror"
     show_2.cast = "Andrew Lincoln, Norman Reedus"
     shows << show_2

     shows
   end

   def self.date
     month = ""
     case time.month
     when 1
       month = "January"
     when 2
       month = "February"
     when 3
       month = "March"
     when 4
       month = "April"
     when 5
       month = "May"
     when 6
       month = "June"
     when 7
       month = "July"
     when 8
       month = "August"
     when 9
       month = "September"
     when 10
       month = "October"
     when 11
       month = "November"
     when 12
       month = "December"
     end


end
