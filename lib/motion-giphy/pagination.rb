class MotionGiphy
  module Pagination
    attr_reader :total, :count, :offset

    def initialize(pagination)
      @total = pagination["total_count"]
      @count = pagination["count"]
      @offset = pagination["offset"]
    end
  end
end
