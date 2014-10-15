require_relative 'shimanekko'

module Map
  class Director
    include SceneUtil

    def initialize
      @back = Image.new(800, 600, [0, 0, 128])
      @bg_img = Image.load("images/map.png") # 島根県地図
      shimanekko1 = Image.load("images/neko1.png")  # しまねっこの画像
      shimanekko2 = Image.load("images/neko2.png")
      shimanekko3 = Image.load("images/neko3.png")
      shimanekko4 = Image.load("images/neko4.png")
      shimanekko5 = Image.load("images/neko5.png")

      @shimanekkos = []
      @shimanekkos << Shimanekko.new(210, 350, shimanekko1) # アクアス座標の指定
      @shimanekkos << Shimanekko.new(350, 300, shimanekko2) # 石見銀山座標の指定
      @shimanekkos << Shimanekko.new(400, 270, shimanekko3) # 出雲大社座標の指定
      @shimanekkos << Shimanekko.new(470, 270, shimanekko4) # 宍道湖座標の指定
      @shimanekkos << Shimanekko.new(650, 70, shimanekko5) # 隠岐島座標の指定

      @captions = ["最初はアクアスに行くにゃ", "次は石見銀山に行くにゃ", "次は出雲大社に行くにゃ", "次は宍道湖に行くにゃ", "次は隠岐の島に行くにゃ"]
      @caption_font = Font.new(30)

      @scenes = [:scene1, :scene2, :scene3, :scene4, :scene5]

      @counter = 5*60
      @shimanekko = @shimanekkos.shift
      @caption = @captions.shift
    end

    def play
      Window.draw(0, 0, @back)
      Window.draw(0, 0, @bg_img) # 島根県の地図を描く
      @shimanekko.draw
      Window.drawFont(400, 200, @caption, @caption_font)
      @counter -= 1
      if @counter == 0
        Scene.set_current_scene(@scenes.shift)
        @shimanekko = @shimanekkos.shift
        @caption = @captions.shift
        @counter = 5*60
      end
    end
  end
end

#      @akuas_caption = "次はアクアスに行くにゃ\n" # アクアス
#      @ginzan_caption = "次は石見銀山に行くにゃ\n" # 石見銀山
#     @taisha_caption = "次は出雲大社に行くにゃ\n" # 出雲大社
#    @shinziko_caption = "次は宍道湖に行くにゃ\n" # 宍道湖
#   @oki_caption = "次は隠岐の島に行くにゃ\n"# 隠岐島