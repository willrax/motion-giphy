module MotionGiphy
  class Image
    attr_reader :url, :width, :height, :frames, :size, :mp4

    def initialize(image_hash)
      @url = image_hash["url"]
      @width = image_hash["width"].to_i
      @height = image_hash["height"].to_i
      @frames = image_hash["frames"].to_i
      @size = image_hash["size"].to_i
      @mp4 = image_hash["mp4"]
    end
  end
end
