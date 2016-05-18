module Concerns
  module WebmotorsCars
    extend ActiveSupport::Concern

    def brands
      parse_json request_api("#{ENV['WEBMOTORS_URI']}/carro/marcas")
    end

    def models
      parse_json request_api("#{ENV['WEBMOTORS_URI']}/carro/modelos")
    end

    private
    def request_api(uri)
      Net::HTTP.post_form(URI(uri), {})
    end

    def parse_json(response)
      JSON.parse response.body
    end
  end
end

