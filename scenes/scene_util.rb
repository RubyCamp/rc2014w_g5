module SceneUtil
  private
  
  def set_timer(sec)
    @timer = sec * 60
  end
  
  def count_down(scene, opt = {})
    return false unless @timer
    @timer -= 1
    if @timer <= 0
      if opt[:reset]
        SceneManager.reload_all
      end
      Scene.set_current_scene(scene)
    end
  end
end
