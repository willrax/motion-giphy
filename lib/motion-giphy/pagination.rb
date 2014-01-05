class MotionGiphy
  module Pagination
    attr_reader :total, :current, :offset

    def initialize(pagination)
      @total = pagination["total_count"]
      @current = pagination["count"]
      @offset = pagination["offset"]
    end
  end
end
