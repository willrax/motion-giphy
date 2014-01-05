module MotionGiphy
  class Request
    def get(path, options={}, &block)
      BW::HTTP.get(create_path(path), payload: create_options(options)) do |result|
        block.call response.build_with_result(result)
      end
    end

    private

    def response
      MotionGiphy::Response
    end

    def create_path(path)
      "http://api.giphy.com/v1/gifs/#{path}"
    end

    def create_options(options)
      api_key = MotionGiphy::Configuration.api_key
      { api_key: api_key }.merge(options)
    end
  end
end
