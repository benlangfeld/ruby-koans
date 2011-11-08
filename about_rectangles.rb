require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class Rectangle
  def initialize(*corners)
    @corners = corners
  end

  def all_unit_points
	#initialize array
	@points=[]
	
	#get the points and put them into an array
	@corners.each do |corner|
		for i in corner[0][0]..corner[3][0]
			for j in corner[0][1]..corner[3][1]
				point = [i, j]
					@points << point
			end
		end
	end
	
	#return the array
	@points
  end
end

def rectangle(*corners)
  Rectangle.new(corners).all_unit_points
end

class AboutRectangles < EdgeCase::Koan
  def test_all_unit_points_are_included
    assert_equal [[0,0], [0,1], [0,2], [0,3], [1,0], [1,1], [1,2], [1,3], [2,0], [2,1], [2,2], [2,3], [3,0], [3,1], [3,2], [3,3]], rectangle([0,0], [0,3], [3,0], [3,3])
  end
end
