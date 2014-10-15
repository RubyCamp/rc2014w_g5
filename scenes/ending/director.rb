module Ending
  class Director
    include SceneUtil
    
    def initialize
      @bg_img = Image.load("images/endcard.png")
      #set_timer(3)
      @timer = 3 * 60
    end

    def play
      Window.draw(0, 0, @bg_img)
      count_down(:title, reset: true)
      #@timer -= 1
      #if @timer <= 0
      #  exit
      #end
    end
  end
end
