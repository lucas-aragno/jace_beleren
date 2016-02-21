require 'net/http'

module JaceBeleren
  class API
    def initialize
      @base_url = 'api.deckbrew.com/mtg'
      @client = Net::HTTP
    end

    def get_all_cards(options)
      uri = options.keys.size > 0 ? '/cards?' : '/cards' 
      options.map do |k, v|
        uri += "#{k}=#{v}"
        uri += '&' unless k == options.keys.last
      end
      do_request_for uri
    end

    def get_card(id)
    end

    def get_sets
    end

    def get_types
    end

    def get_supertypes
    end

    def get_subtypes
    end

    def get_colors
    end

    def search(query)
    end

    private

    def do_request_for(uri)
      @client.get uri
    end
  end
end