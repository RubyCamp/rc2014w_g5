require_relative 'sprite_bubble'
require_relative 'sprite_iruka'
module Scene1
  class Director
    include SceneUtil
    MASK_WINDOW_COLOR = [255, 255, 255]
    FONT_COLOR = [255, 255, 255]
    WINDOW_WIDTH = 800
    WINDOW_HEIGHT = 600
    IMAGE_IRUKA = 'images/test.jpg'
    IMAGE_BUBBLE = 'images/bubble_b.png'
    MESSAGE_AQUAS = "しあわせのバブリング＆マジックリングを\nアクアスに見に来てにゃ"
    MESSAGE_CREDIT = "幸せのバブリング(r)\n島根県立しまね海洋館 アクアス"
    def initialize
      @iruka = [Iruka.new(100,100)]
      @font = Font.new(32)
      @bubbles = [Bubble.new(0,0)]
      set_timer(30)
    end

    def play
      if Input.mousePush?(M_LBUTTON)
        @bubbles << Bubble.new(Input.mousePosX,Input.mousePosY)
      end
      Window.drawFont(0,0,MESSAGE_AQUAS,@font,color:FONT_COLOR)
      Window.drawFont(350,520,MESSAGE_CREDIT,@font,color:FONT_COLOR)

      Sprite.update(@bubbles)
      Sprite.draw(@bubbles)
      Sprite.draw(@iruka)
      Sprite.check(@bubbles, @bubbles)
      Sprite.check(@iruka,@bubbles )
      count_down(:map)
    end
  end
end
