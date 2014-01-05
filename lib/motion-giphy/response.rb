module MotionGiphy
  class Response
    def self.build_with_result(result)
      response = self.new

      if result.ok?
        response.success = true
        response.json = BW::JSON.parse(result.body.to_s)
      else
        response.success = false
        response.error = MotionGiphy::Error.new(result.error)
      end

      response
    end

    attr_accessor :data, :json, :success, :error

    def process_data_as_singular
      self.data = gif.new(self.json["data"])
    end

    def process_data_as_batch
      self.data = gif.process_batch(self.json["data"])
    end

    def pagination
      @pages ||= MotionGiphy::Pagination.new(json["pagination"])
    end

    def meta
      @meta ||= MoptionGiphy::Meta.new(json["meta"])
    end

    def success?
      @success
    end

    private

    def gif
      MotionGiphy::Gif
    end
  end
end
