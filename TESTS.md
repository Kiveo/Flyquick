#This file is temporary and should be removed prior to release.
#Use for documentation of test runs


<!-- THIS BLOCK WILL FIND FIRST LINK LISTING OF AN AIRPORT ON THE STATE AIRPORTS LIST PAGE
  def self.scrape_airnav
    doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us/FL"))  #I want this to change based on menu 1 selection of state... ideally. !!!!!!!!!!!

    tables = doc.search('table')
    table = tables[3] # third table in the document contains all the airport links and names for the state
    table_data = table.search('a')
    # airport_link = table_data[0].inner_html   #sample, first link text
    airport_link = table_data.inner_html   #sample, first link text
    # table_data.each |airport|
    #   scraped_airport_list << airport
    # end
    binding.pry

  end -->
