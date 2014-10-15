class Iruka < Sprite
  def initialize(x, y,image = nil)
    image = Image.load("images/test.jpg")
    super
    @dx = 1
  end
end
