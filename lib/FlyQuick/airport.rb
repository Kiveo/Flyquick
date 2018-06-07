class FlyQuick::Airport
  attr_accessor :ident, :name, :tower, :wx, :runways

  def self.state_selector(selected_state)
    @airport_state = selected_state
  end
  #------------------------------------------------------------------------------
  def self.list #called from cli
    self.scraped_airport_list
  end

  def self.scraped_airport_list  #scrape list of state airports
    airport_collection = []
    doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us/#{@airport_state}"))  #I want this to change based on menu 1 selection of state... ideally.
    tables = doc.search('table')
    table = tables[3] # third table in the document contains all the airport links and names for the state
    airport_links = table.search('a') #grab the links within the table, for lack of css classes or id's
    airport_links.each do |link|
      airport_collection << link.text
    end
    airport_collection #collection of link text (aka airport identifiers)
  end
  #------------------------------------------------------------------------------
  def self.current(user_selection)   #Call from cli, after user selects airport
    self.scrape_selected_airport(user_selection)
  end

  def self.scrape_selected_airport(user_selection) #create and return an airport object for the current selection.
    airport = self.new

    doc2 = Nokogiri::HTML(open("https://www.airnav.com/airport/#{user_selection}"))
    airport_tables = doc2.search('table')
    airport_name_table = airport_tables[3]
    airport.ident = airport_name_table.search("b")[0].inner_html
    if airport_name_table.search("b")[0] != nil
      airport.name = airport_name_table.search("b")[1].inner_html
    else
      airport.name = "Name: Not Listed"
    end
    airport_com_table = airport_tables[9]
    # puts "#{airport_com_table.at("tr[1]").text}" #tower frequency
    if airport_com_table.at("tr[1]") != nil
      airport.tower = airport_com_table.at("tr[1]").text
    else
      airport.tower = "TOWER: Not Listed"
    end
    if airport_com_table.at("tr[2]") != nil
      airport.wx = airport_com_table.at("tr[2]").text
    else
      airport.wx = "WX: Not Listed"
    end
    airport.runways = doc2.search("h4").text
    airport
  end

end #EOC
