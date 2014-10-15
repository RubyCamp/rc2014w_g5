module Scene3
  class Director
    include SceneUtil

    def initialize
      @bg_img = Image.load("images/_MG_5846.JPG")
      set_timer(40)
      @font = Font.new(23, "ＭＳ Ｐゴシック", {weight: 1000})
      @counter=0
      @bg_img2 = Image.load("images/shimanekko.png")
      @bg_img3 = Image.load("images/shimanekko3.png")
      @bg_img4 = Image.load("images/niwa.jpg")
      @sss     = 0
      @bg_img5 = Image.load("images/zou.jpg")
    end

    def play
 


     if @counter <1200
        Window.draw(0, 0, @bg_img)
        Window.drawFont(170, 565,"出雲大社：正式名称「いずもおおやしろ」だにゃ\n",@font, color: [255, 1, 92])
        Window.drawFont(0,0,"平成１６年７月６日\n　重要文化財建造物に指定されたにゃ　",@font, color: [255, 1, 92])
        Window.drawFont(0,90,"縁結びで有名な神社だにゃ\n　",@font, color: [255, 1, 92])
    end
     @counter += 1
     if 300 < @counter  and @counter < 1200
        Window.draw(630, 40, @bg_img2)
     end
     if 360 < @counter  and @counter < 1200
        Window.draw(30, 119, @bg_img3)
     end
     if 1200 <= @counter 
        Window.draw(0, 0, @bg_img4)
     end
     if 1320 <= @counter
       Window.drawFont(370,100 ,"交通",@font, color: [255, 1, 92])
     end
     if 1440 <= @counter
       Window.drawFont(0,150 ,"最寄駅：一畑電車大社線・出雲大社前駅\nJR出雲市駅から一畑バス出雲大社行または日御碕行\n一畑電車電鉄出雲市駅から出雲大社前駅まで\n川跡駅乗換で25分\n一畑バスと中国JRバスの運行する夜行高速バス「スサノオ号」\n運行があるにゃ",@font, color: [255, 1, 92])
     end         
     if 1740 <= @counter
        Window.drawFont(210,550 ,"ぜひ、いらしゃってくださいにゃ！！",@font, color: [255, 1, 92])
     end
     if 1740 <= @counter 
        Window.draw(0-@sss, 0, @bg_img4)
     end
     if 1740 <= @counter
       Window.drawFont(370-@sss,100 ,"交通",@font, color: [255, 1, 92])
     end
     if 1740 <= @counter
       Window.drawFont(0-@sss,150 ,"最寄駅：一畑電車大社線・出雲大社前駅\nJR出雲市駅から一畑バス出雲大社行または日御碕行\n一畑電車電鉄出雲市駅から出雲大社前駅まで\n川跡駅乗換で25分\n一畑バスと中国JRバスの運行する夜行高速バス「スサノオ号」\n運行があるにゃ",@font, color: [255, 1, 92])
     end 
     if 1740<= @counter and @counter < 1740 +400
       @sss += 2
     end
     if 1740 <= @counter 
        Window.draw(800-@sss, 0, @bg_img5)
     end   
      count_down(:map)
      
    end
  end
end
