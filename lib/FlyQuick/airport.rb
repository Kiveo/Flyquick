class FlyQuick::Airport

  def self.current  #specific to current airnav entries...wx changes constantly.
    # time to stub a bit
    # -has an identifier
    # -has a runway(s)
    # -has an approach frequency
    # -has a main frequency (tower or unicom)
    # -pattern altitude
    # --has a wx frequency  (use metar? or just provide frequency? ...which is more pertinent to fly-'quick'? )
    puts "Identifier: KZPH"
    puts "Runway Information: Runway 5/23"
    puts "TAMPA APPROACH: 119.9"
    puts "CTAF/UNICOM: 	123.075"
    puts "Pattern altitude: 	1089.9 ft. MSL"
    puts "WX ASOS: 	118.975"
   end

end #EOC
