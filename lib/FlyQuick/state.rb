class FlyQuick::State
  attr_accessor :name, :short

  @@all_states = []

  def initialize(name, short)
    @name = name
    @short = short
    @@all_states << self
  end

  def self.all
    @@all_states
  end



  # Prevent scraping the same data more than once... How can we accomplish this?
  # def self.list #called from cli
  #   self.scraped_state_list
  # end
  #
  # def self.scraped_state_list  #scrape list of states listed on nav db
  #   state_collection = []
  #   puts "scraping state ************"
  #   states_doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us"))
  #   state_names = states_doc.search("a.wl")
  #   state_names.each do |state| state_collection << state.text
  #   end
  #   state_collection #collection of link text (aka state names, plus DC)
  # end
  #
  # def self.short_list
  #   self.scraped_short_list
  # end
  # def self.scraped_short_list
  #   short_collection = []
  #   puts "scraping state ************ short list "
  #   short_doc = Nokogiri::HTML(open("https://www.airnav.com/airports/us"))
  #   short_doc.css('a.wl').each { |link| short_collection << link['href'].gsub(/\/airports\/us\//, "") }
  #
  #   short_collection #collection of shorthand state link texts (aka FL,GA, OH, plus DC's value)
  # end

end #EOC
