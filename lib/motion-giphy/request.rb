module MotionGiphy
  class Request
    @@url = "http://api.giphy.com"

    def get(path, options={}, &block)
      client.get(create_path(path), create_options(options)) do |result|
        block.call response.build_with_result(result)
      end
    end

    private

    def response
      MotionGiphy::Response
    end

    def client
      @client ||=
        begin
          AFMotion::SessionClient.build(@@url) do
            session_configuration :default
            response_serializer :json
            header "Accept", "application/json"
          end
        end
    end

    def create_path(path)
      "/v1/gifs/#{path}"
    end

    def create_options(options)
      api_key = MotionGiphy::Configuration.api_key
      { api_key: api_key }.merge(options)
    end
  end
end
