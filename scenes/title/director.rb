module Title
  class Director
    include SceneUtil
    
    def initialize
      @bg_img = Image.load("images/title1.png")
      set_timer(3)
    end

    def play
      Window.draw(0, 0, @bg_img)
      count_down(:map)
    end
  end
end
