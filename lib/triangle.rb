class Triangle
  define_method(:initialize) do |side_1, side_2, side_3|
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
  end

  define_method(:side_1) do
    @side_1
  end
  define_method(:side_2) do
    @side_2
  end
  define_method(:side_3) do
    @side_3
  end
  define_method(:triangle?) do
    ((@side_2.+(@side_3)).<=(@side_1)).|((@side_1.+(@side_2)).<=(@side_3)).|((@side_1.+(@side_3)).<=(@side_2))
  end
  define_method(:equilateral?) do
    @side_1.==(@side_2).&(@side_1.==(@side_3))
  end
  define_method(:isosceles?) do
    @side_1.==(@side_2).|(@side_2.==(@side_3)).|(@side_1.==(@side_3))
  end
  define_method(:scalene?) do
    @side_1.!=(@side_2).|(@side_2.!=(@side_3)).|(@side_1.!=(@side_3))
  end
end
