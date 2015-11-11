class Window < Gosu::Window

WIDTH = 640
HEIGHT = 400

	def initialize(atm)
    super WIDTH, HEIGHT
		self.caption = "ATM Machine"
		@atm = atm
		@font = Gosu::Font.new(20)
		@cursor = Cursor.new(self)
	end

	def put_on_screen(message)
		@font.draw(message, 10, 10, ZOrder::UI, 1.0, 1.0, 0xff_ffffff)
	end

	def draw
		@cursor.draw
		draw_rec(1,1,700,123213,Gosu::Color.new(0xff_ffffff))
	end

	private

	def draw_rec(x,y,length,width,color)
		Gosu.draw_line(x, y, color, x + width, y, color, 1)
		Gosu.draw_line(x + width, y, color, x + width, y + length, color, 1)
		Gosu.draw_line(x + width, y + length, color, x, y + length, color, 1)
		Gosu.draw_line(x, y + length, color, x, y, color, 1)
		for i in 0...width
			Gosu.draw_line(x + i, y + length, color, x + i, y, color)
		end
	end

end