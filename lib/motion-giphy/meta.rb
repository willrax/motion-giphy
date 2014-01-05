module MotionGiphy
  class Meta
    attr_reader :message, :status

    def initialize(meta)
      @message = meta["message"]
      @status = meta["status"]
    end
  end
end
