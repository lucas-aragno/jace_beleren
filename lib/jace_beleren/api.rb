require 'net/http'
require 'json'

module JaceBeleren
  class API
    def initialize
      @base_url = 'http://api.deckbrew.com/mtg'
      @client = Net::HTTP
    end

    def get_all_cards(options)
      uri = options.keys.size > 0 ? '/cards?' : '/cards' 
      options.each do |k, v|
        uri += "#{k}=#{v}"
        uri += '&' unless k == options.keys.last
      end
      do_request_for uri
    end

    def get_card(id)
      uri = "/cards/#{id}"
      do_request_for uri
    end

    def get_sets
      uri = "/sets"
      do_request_for uri
    end

    def get_types
      uri = "/types"
      do_request_for uri
    end

    def get_supertypes
      uri = "/supertypes"
      do_request_for uri
    end

    def get_subtypes
      uri = "/subtypes"
      do_request_for uri
    end

    def get_colors
      uri = "/colors"
      do_request_for uri
    end

    def search(query)
      uri = "/cards/typeahead?q=#{query}"
      do_request_for uri
    end

    private

    def do_request_for(uri)
      JSON.parse @client.get URI(@base_url + uri)
    end
  end
end
