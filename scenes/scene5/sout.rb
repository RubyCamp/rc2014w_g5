class Sout
	def initialize
		@cre = Font.new(16)
		@font = Font.new(25, fontname="Ariall Bold")
		@head = 130
		@r = 255
		@g = 74
		@b = 138
		@message = [
		  ["島根半島の北東約８０ｋｍ、日本海に囲まれた島、",
			 "それが隠岐の島だにゃ"],
			["その昔多くの流人たちがもたらした貴族文化や、",
			"江戸時代隆盛を極めた北前船のにぎやかな往来によって",
			"運ばれてきた多種多様の分化を、時の流れの中で",
			"独自の文化として風土にとけこませてきたんだにゃ"],
			["牛突きや御霊会風流のなど昔から伝わる文化は今でも",
			"生きてて、そして今でも次の世代へと引き継がれているんだにゃ"],
			["島の生態として独自の分化のものが多くて、",
			"動植物についても本州では一般的なキツネやタヌキ",
			"といった動物はおらず、オキノウサギや、",
			"オキノサンショウウオといった隠岐固有の動物たちが",
			"数多く生息してるんだにゃ。"],
			["観光地としても有名であり、白島海岸、ローソク島、",
			"トカゲ岩や壇鏡の滝などの数多くの絶景を",
			"有しているんだにゃ。"],
			["なかでも、「赤ハゲ山」といわれる標高３２５ｍの",
			"丸みを帯びた山は、隠岐一番の高展望地として",
			"隠岐の島々はもちろん、島根半島や鳥取県",
			"大山まで一望することができる山なんだにゃ！"]
			]
	end
	
	def out(fc)
		Window.drawFont(10, 580, "隠岐の島町役場", @cre, :color=>[@r, @g, @b])
		if fc <= 600
			Window.drawFont(@head, 20, @message[0][0], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 50, @message[0][1], @font, :color=>[@r, @g, @b])
		end
		if fc > 600 && fc <= 1200
			Window.drawFont(@head, 20, @message[1][0], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 50, @message[1][1], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 80, @message[1][2], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 110, @message[1][3], @font, :color=>[@r, @g, @b])
		end
		if fc > 1200 && fc <= 1800
			Window.drawFont(@head, 20, @message[2][0], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 50, @message[2][1], @font, :color=>[@r, @g, @b])
		end
		if fc > 1800 && fc <= 2400
			Window.drawFont(@head, 20, @message[3][0], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 50, @message[3][1], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 80, @message[3][2], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 110, @message[3][3], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 140, @message[3][4], @font, :color=>[@r, @g, @b])
		end
		if fc > 2400 && fc <= 3000
			Window.drawFont(@head, 20, @message[4][0], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 50, @message[4][1], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 80, @message[4][2], @font, :color=>[@r, @g, @b])
		end
		if fc > 3000 && fc <= 3600
			Window.drawFont(@head, 20, @message[5][0], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 50, @message[5][1], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 80, @message[5][2], @font, :color=>[@r, @g, @b])
			Window.drawFont(@head, 110, @message[5][3], @font, :color=>[@r, @g, @b])
		end
	end
end
