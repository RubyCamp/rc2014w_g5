require_relative 'scene_util'
require_relative 'title/director'
require_relative 'map/director'
require_relative 'scene1/director'
require_relative 'scene2/director'
require_relative 'scene3/director'
require_relative 'scene4/director'
require_relative 'scene5/director'
require_relative 'ending/director'

module SceneManager
  module_function
  
  def load_all
    Scene.add_scene(Title::Director.new,  :title)
Scene.add_scene(Map::Director.new, :map)
Scene.add_scene(Scene1::Director.new,  :scene1)
Scene.add_scene(Scene2::Director.new,  :scene2)
Scene.add_scene(Scene3::Director.new,  :scene3)
Scene.add_scene(Scene4::Director.new,  :scene4)
Scene.add_scene(Scene5::Director.new,  :scene5)
Scene.add_scene(Ending::Director.new,  :ending)
  end

  def reload_all
    Scene.clear_all
    load_all
  end
end
