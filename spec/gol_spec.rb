require 'spec_helper'
require 'gameoflife'

describe 'Cell' do
	it 'should return 0 if neighbor > 2' do
		world = World.new
		world.test_status(1).should == 0
	end
	it 'should return 1 if neighbors = 2 or 3' do 
		world = World.new
		world.test_status(2).should == 1
	end
	it 'should return 0 if neighbors > 3' do
		world = World.new
		world.test_status(4).should == 0
	end
end
describe 'Game of Life' do 
	it 'should create a new cell and be stored in world' do 
		world = World.new
		world.create_cell(1,2)
		world.cells.count.should == 1
	end
	it 'should create a new cell and be stored in world' do 
		world = World.new
		world.create_cell(1,2)
		world.create_cell(2,2)
		world.cells.count.should == 2
	end
	xit 'should test for cells above' do 
		world = World.new
		world.create_cell(0,0)
		world.create_cell(1,0)
		world.test_north.count.should = 1
	end

end


