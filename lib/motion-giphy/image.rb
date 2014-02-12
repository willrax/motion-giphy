module MotionGiphy
  class Image
    attr_reader :url, :width, :height, :frames, :size

    def initialize(image_hash)
      @url = image_hash["url"]
      @width = image_hash["width"].to_i
      @height = image_hash["height"].to_i
      @frames = image_hash["frames"].to_i
      @size = image_hash["size"].to_i
    end
  end
end
