class FlyQuick::Airport

  # def self.current  #specific to current airnav entries...wx changes constantly.
  #   # time to stub a bit
  #   # -has an identifier
  #   # -has a runway(s)
  #   # -has an approach frequency
  #   # -has a main frequency (tower or unicom)
  #   # -pattern altitude
  #   # --has a wx frequency  (use metar? or just provide frequency? ...which is more pertinent to fly-'quick'? )
  #   puts "Identifier: KZPH"
  #   puts "Runway Information: Runway 5/23"
  #   puts "TAMPA APPROACH: 119.9"
  #   puts "CTAF/UNICOM: 	123.075"
  #   puts "Pattern altitude: 	1089.9 ft. MSL"
  #   puts "WX ASOS: 	118.975"
  #   puts "Sectional image @ http://vfrmap.com/?type=vfrc&lat=28.228&lon=-82.156&zoom=10" ?
  #  end

  def self.current
    puts "Airports for today! Here and there, and everywhere."

    airport_1 = self.new
    airport_1.name = "Zephyrhills"
    airport_1.ident = "KZPH"
    airport_1.runways = "05/23"
    airport_1.approach = "119.9"
    airport_1.tower = "123.075"
    airport_1.pattern = "1089.9ft MSL"
    airport_1.wx = "WX ASOS 118.975"
    airport_1.sectional = "SECTIONAL http://vfrmap.com/?type=vfrc&lat=28.228&lon=-82.156&zoom=10"

    airport_2 = self.new
    airport_2.name = "Tampa International Airport"
    airport_2.ident = "KTPA"
    airport_2.runways = "1L/19R"
    airport_2.approach = "118.15"
    airport_2.tower = "119.5"
    airport_2.pattern = "left pattern"
    airport_2.wx = "WX PHONE 813-873-7228"
    airport_2.sectional = "SECTIONAL http://vfrmap.com/?type=vfrc&lat=27.975&lon=-82.533&zoom=10"
  end

end #EOC
