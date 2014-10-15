module Scene2
  class Pointer < Sprite
    def initialize(*args)
      super
      self.collision = [0, 0]
    end

    def update
      self.x = Input.mousePosX
      self.y = Input.mousePosY
    end
  end

  class Director
    include SceneUtil
    def initialize
      @bg_img = Image.load("images/ginzan.jpg") # 画像：銀山間歩
      @effect = Image.load("images/pikapika.png") # エフェクト：輝き
      @shimanekko1 = Image.load("images/shimanekko1.png")
      @shimanekko2 = Image.load("images/shimanekko2.png")

      @pointer = Pointer.new(Input.mousePosX, Input.mousePosY)
      @effects = []
      5.times { @effects << Sprite.new(rand(150..600), rand(150..450), @effect) }

      @title = "世界遺産　石見銀山遺跡にゃ\n"
      @details ="自然環境と共存した産業遺跡\n当時の坑道＝「間歩」を通れるにゃ"
      @speech = "光っているところをクリックしてみるにゃ\n"
      @title_font = Font.new(30)
      @details_font = Font.new(24)
      @speech_font = Font.new(24)
      set_timer(40)
      @counter = 30
    end

    def play
      Window.draw(120, 100, @bg_img) # 背景画像の表示
      Window.draw(0, 450, @shimanekko1)
      Window.drawFont(400, 0, @title, @title_font) # タイトルの表示
      Window.drawFont(400, 50, @details, @details_font) # 説明文の表示
      Window.drawFont(200, 550, @speech, @speech_font) # セリフの表示

      @counter -= 1
      if @counter == 0
        ef = @effects.pop
        ef.x = rand(150..600)
        ef.y = rand(150..450)
        @effects.unshift(ef)
        @counter = 60
      end

      Sprite.draw(@effects)

      if Input.mouseDown?(M_LBUTTON)
        @pointer.update
        if Sprite.check(@pointer, @effects)
          Window.draw(0, 450, @shimanekko2)
        end
      end

      count_down(:map)
    end
  end
end
