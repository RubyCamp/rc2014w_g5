require 'dxruby'

require_relative 'scene'
require_relative 'scenes/scene_manager'

Window.caption = "RubyCamp2014 Example"
Window.width   = 800
Window.height  = 600

SceneManager.load_all
Scene.set_current_scene(:title)

bgm = Sound.new("sounds/bgm.wav.mid")  
Sound#loopCount= -1
bgm.play

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  Scene.play_scene

end
