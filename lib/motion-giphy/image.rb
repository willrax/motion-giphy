module MotionGiphy
  class Image
    attr_reader :url, :width, :height, :frames, :size

    def initialize(image_hash)
      @url = image_hash["url"]
      @width = image_hash["width"]
      @height = image_hash["height"]
      @frames = image_hash["frames"]
      @size = image_hash["size"]
    end
  end
end
