module MotionGiphy
  class Client
    def self.search(query, options = {}, &block)
      options = { q: query }.merge(options)

      request.get("search", options) do |response|
        response.process_data_as_batch if response.success?
        block.call response
      end
    end

    def self.gif(id, &block)
      request.get("#{id}") do |response|
        response.process_data_as_singular if response.success?
        block.call response
      end
    end

    def self.trending(options = {}, &block)
      request.get("trending", options) do |response|
        response.process_data_as_batch if response.success?
        block.call response
      end
    end

    def self.request
      MotionGiphy::Request.new
    end
  end
end
