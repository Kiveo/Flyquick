class FlyQuick::Airport
  attr_accessor :ident, :name, :tower, :wx, :runways

  #-----------------------------------------------------------------------
  def self.list
    self.scraped_airport_list
  end

  def self.scraped_airport_list
    airport_collection = []
    doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us/FL"))  #I want this to change based on menu 1 selection of state... ideally. !!!!!!!!!!!
    tables = doc.search('table')
    table = tables[3] # third table in the document contains all the airport links and names for the state
    airport_links = table.search('a')
    airport_links.each do |link|
      airport_collection << link.inner_html
    end
    airport_collection
  end
#------------------------------------------------------------------------------
  def self.current(user_selection)   #redundant or separate method of sole responsibility? (ie not scraping and being called)
    self.scrape_selected_airport(user_selection)
  end

  def self.scrape_selected_airport(user_selection)
    airport = self.new

    doc2 = Nokogiri::HTML(open("https://www.airnav.com/airport/#{user_selection}"))
    airport_tables = doc2.search('table')
    airport_name_table = airport_tables[3]
    airport.ident = airport_name_table.search("b")[0].inner_html
    airport.name = airport_name_table.search("b")[1].inner_html

    airport_com_table = airport_tables[9]
    airport.tower = airport_com_table.at("tr[1]").text
    airport.tower = airport_com_table.at("tr[2]").text

    airport.wx = doc2.search("h4").text 
    # body > table:nth-child(8) > tbody > tr > td:nth-child(1) > table:nth-child(10) > tbody > tr:nth-child(1)
    # airport_ops_table = airport_tables[8]

    # binding.pry
    airport
  end

end #EOC
