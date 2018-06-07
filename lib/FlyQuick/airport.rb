class FlyQuick::Airport
  attr_accessor :name, :ident, :tower, :wx, :runways

  #-----------------------------------------------------------------------
  def self.all #testing alternate method for acquiring airport list method scrape
    self.scraped_airport_list
  end
  def self.scraped_airport_list
    # airport = self.new
    airport_collection = []
    doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us/FL"))  #I want this to change based on menu 1 selection of state... ideally. !!!!!!!!!!!
    tables = doc.search('table')
    table = tables[3] # third table in the document contains all the airport links and names for the state
    airport_links = table.search('a')
    airport_links.each do |link|
      airport_collection << link.inner_html
    end
    airport_collection
    # airport_link = table_data[0].inner_html   #sample, first link text
    # #want to replace airport_link with loop of airport link(s)...somewhere. here?
    # airport_link = table_data.each |link|
    #   airports << link.inner_html
  end
#------------------------------------------------------------------------------
  def self.current(user_selection)
    self.scrape_selected_airport(user_selection)
  end

  def self.scrape_selected_airport(user_selection)
    airport = self.new

    doc2 = Nokogiri::HTML(open("https://www.airnav.com/airport/#{user_selection}"))
    airport_tables = doc2.search('table')
    airport_table = airport_tables[3]
    # airport_name = airport_table.attr("b")
    airport.name = airport_table.search("b")[1].inner_html
    airport
    # binding.pry
  end

end #EOC
