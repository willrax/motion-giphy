module MotionGiphy
  class Error
    attr_reader :message, :error

    def initialize(error)
      @error = error
      @message = error.localizedDescription
    end
  end
end
