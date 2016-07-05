require('rspec')
require('triangle')

describe(Triangle) do

  describe('#side_1') do
    it('returns the length property of side 1 of the object') do
      new_triangle = Triangle.new(10, 20, 20)
      expect(new_triangle.side_1()).to(eq(10))
    end
  end

  describe('#side_2') do
    it('returns the length property of side 2 of the object') do
      new_triangle = Triangle.new(10,20,20)
      expect(new_triangle.side_2()).to(eq(20))
    end
  end

  describe('#side_3') do
    it('returns the length property of side 3 of the object') do
      new_triangle = Triangle.new(10,20,30)
      expect(new_triangle.side_3()).to(eq(30))
    end
  end

  describe('#equilateral?') do
    it('returns true if all sides of the object are equal') do
      new_triangle = Triangle.new(20,20,20)
      expect(new_triangle.equilateral?()).to(eq(true))
    end
  end

  describe('#isosceles?') do
    it('returns true if two sides of the object are equal') do
      new_triangle = Triangle.new(90,40,40)
      expect(new_triangle.isosceles?()).to(eq(true))
    end
  end

  describe('#scalene?') do
    it('returns true if no sides of the object are equal') do
      new_triangle = Triangle.new(80,70,40)
      expect(new_triangle.scalene?()).to(eq(true))
    end
  end

  describe('#triangle?') do
    it('returns true if no sides of the object are equal') do
      new_triangle = Triangle.new(80,10,40)
      expect(new_triangle.triangle?()).to(eq(true))
    end
  end
end
