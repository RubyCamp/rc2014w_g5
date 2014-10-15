module Ending
  class Director
    include SceneUtil
    
    def initialize
      @bg_img = Image.load("scenes/ending/images/endcard.png")
      set_timer(3)
    end

    def play
      Window.draw(0, 0, @bg_img)
    
    end
  end
end
