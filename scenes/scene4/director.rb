require_relative 'bird'
module Scene4
  class Director
    include SceneUtil

    def initialize
      @bg_img = Image.load("images/shinjiko.jpg")
      tori_img = Image.load("images/tori.png")
     
      @neko2 = Image.load("images/neko4.png")
     
      @tori=Bird.new(100,400,tori_img)
      @font = Font.new(50)
      @font2 = Font.new(25)
      set_timer(30)
    end

    def play
      Window.draw(0, 0, @bg_img)
      
      Window.drawFont(40, 0, "夕日が輝く宍道湖だにゃ", @font)
      Window.drawFont(40, 50, "宍道湖自然館ゴビウスで宍道湖の自然を堪能して\nはくちょう号でのクルージングが楽しめるにゃ。", @font2)      
      Window.drawFont(40, 100, "さらに島根県立美術館では、日本夕陽百選にも選ばれた\n「夕日ショー」を贅沢に眺めながら	、夕食を取っていただけるんだにゃ。", @font2)
      @tori.update
      @tori.draw
 
if
 Input.mouseDown?(M_LBUTTON)
 Window.draw(450, 400, @neko2)
end

count_down(:map)
    end
  end
end
