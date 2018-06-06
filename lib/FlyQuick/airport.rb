class FlyQuick::Airport
  attr_accessor :name, :ident, :tower, :wx, :runways


  def self.current
    puts "Airports for today! Here and there, and everywhere."

    airport_1 = self.new
    airport_1.name = "Zephyrhills"
    airport_1.ident = "KZPH"
    airport_1.tower = "123.075"
    airport_1.wx = "WX ASOS 118.975"
    airport_1.runways = "05/23"

    airport_2 = self.new
    airport_2.name = "Tampa International Airport"
    airport_2.ident = "KTPA"
    airport_2.tower = "119.5"
    airport_2.wx = "WX PHONE 813-873-7228"
    airport_2.runways = "1L/19R"

    puts "#{[airport_1, airport_2]}"
  end

end #EOC
