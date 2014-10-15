require_relative '../../scene.rb'
require_relative 'sout.rb'

module Scene5
	class Director
	

		def initialize
			@str = Sout.new
			@bg_img = []
			10.downto(1) {|i| 
			@bg_img[i - 1] = Image.load("images/oki#{'%02d' % i}.jpg")}
			@alpha = 255
			@i = 0
			@font = Font.new(25, fontname="Ariall Bold")
			@fc = 0
		end

		def play
			Window.draw(0, 0, @bg_img[@i + 1])								# �ꖇ�ڂ̉摜���o�́A�z��I�ɂ͓�Ԗ�
			Window.drawAlpha(0, 0, @bg_img[@i], @alpha.to_i)	# �񖇖ځA���\�b�h���A���t�@�l�������邽�߂̃��\�b�h�ɐ؂�ւ���
			@str.out(@fc)
			@fc += 1
			@alpha -= 255.0 / 360
			if @alpha <= 0
				@i += 1
				@alpha = 255
			end
			if @i == 8
				Scene.set_current_scene(:ending)
				Scene.play_scene
			end
		end
	end
end