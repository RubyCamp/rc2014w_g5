class Bubble < Sprite
  BULUE="images/bubble_b.png"
  PINK="images/bubble_p.png"
  YELLOW="images/bubble_y.png"
  GREEN="images/bubble_g.png"

  def initialize(x, y,image =nil)
    num = rand(4)
    case num
    when 0
      image = Image.load(BULUE)
    when 1
      image = Image.load(PINK)
    when 2
      image = Image.load(YELLOW)
    when 3
      image = Image.load(GREEN)
    end
    image.set_color_key([255, 255, 255])
    super
    @dx = 1
  end

  def update
    self.x += @dx
    @dx = -@dx if self.x > (Window.width - self.image.width) || self.x < 0
    self.y += Math.sin(self.x / 10) * 5
  end

  def hit(obj)
    @dx = -@dx
  end
end
