module MotionGiphy
  class Configuration
    class << self
      attr_writer :api_key

      def configure(&block)
        yield self
        self
      end

      def api_key
        @api_key
      end
    end
  end
end
