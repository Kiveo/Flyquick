class FlyQuick::State

  def self.list #call from cli
    self.scraped_state_list
  end

  def self.scraped_state_list  #scrape list of states listed on nav db
    state_collection = []
    states_doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us"))
    state_names = states_doc.search("a.wl")
    state_names.each do |state| state_collection << state.text
    end
    state_collection #collection of link text (aka state names, plus DC)
  end

end #EOC
