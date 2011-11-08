require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class Rectangle
  def initialize(*corners)
    @corners = corners
  end

  def all_unit_points
    # Hint: Array#permutation
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
