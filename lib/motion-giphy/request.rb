module MotionGiphy
  class Request
    def get(path, options = {}, &block)
      client.get(path, create_options(options)) do |result|
        block.call response.build_with_result(result)
      end
    end

    private

    def client
     AFMotion::SessionClient.build_shared("http://api.giphy.com/v1/gifs/") do
        session_configuration :default
        header "Accept", "application/json"
        response_serializer :json
      end
    end

    def response
      MotionGiphy::Response
    end

    def create_options(options)
      api_key = MotionGiphy::Configuration.api_key
      { api_key: api_key }.merge(options)
    end
  end
end
