module MotionGiphy
  class Gif
    def self.process_batch(data)
      data.map { |gif_hash| new(gif_hash) }
    end

    attr_reader :hash

    def initialize(hash)
      @hash = hash
    end

    def id
      hash["id"]
    end

    def giphy_url
      hash["url"]
    end

    def original
      image.new(images["original"])
    end

    def fixed_height_still
      image.new(images["fixed_height_still"])
    end

    private

    def images
      hash["images"]
    end

    def image
      MotionGiphy::Image
    end
  end
end
