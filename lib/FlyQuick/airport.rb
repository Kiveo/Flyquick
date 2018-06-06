class FlyQuick::Airport
  attr_accessor :name, :ident, :tower, :wx, :runways


  def self.current

    self.scrape_airports
  end

  def self.scrape_airports
    airports = []
    #scrape array info
    airports << self.scrape_airnav

    [airports]
  end
  # #Need to scrape to get similar to this block
  # airport_1 = self.new
  # airport_1.name = "Zephyrhills"
  # airport_1.ident = "KZPH"
  # airport_1.tower = "123.075"
  # airport_1.wx = "WX ASOS 118.975"
  # airport_1.runways = "05/23"
  #
  # airport_2 = self.new
  # airport_2.name = "Tampa International Airport"
  # airport_2.ident = "KTPA"
  # airport_2.tower = "119.5"
  # airport_2.wx = "WX PHONE 813-873-7228"
  # airport_2.runways = "1L/19R"
  #
  # [airport_1, airport_2]

  def self.scrape_airnav
    doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us/FL"))  #I want this to change based on menu 1 selection of state... ideally. !!!!!!!!!!!
    # name = doc.search("table:nth-child(4)/tbody[1]").inner_html  #testing   body > center > table:nth-child(4) > tbody > tr:nth-child(2) > td:nth-child(1) > a

    tables = doc.search('table')
    table = tables[3] # third table in the document contains all the airport links and names for the state
    table_data = table.search('a').inner_html
    # names = table_data.search('a href').inner_html
    # name = names[1]
    binding.pry

  end

end #EOC
