class Cell
	attr_accessor :x, :y
		def initialize(x=0, y=0)
			@x = x
			@y = y
		end
end

class World
	attr_accessor :cells

	def initialize
		@cells = []
	end

	def create_cell(x, y)
		cell = Cell.new(x, y) 
		@cells << cell
	end

	def test_status(neighbors)
		if neighbors < 2
			status = 0
		elsif neighbors == 2 || neighbors == 3
			status = 1
		elsif neighbors > 3 
			status = 0
		end
	end

	def cell_lives? neighbors
		if neighbors < 2
			false
		elsif neighbors == 2 || neighbors == 3
			true
		elsif neighbors > 3 
			false
		end
	end
end







