class CartesianProduct
  include Enumerable

  attr_accessor :a
  attr_accessor :b

  def initialize(arr_1, arr_2)
    @a = arr_1
    @b = arr_2
  end

  def each
    a.each { |first| b.each { |second| yield [first, second] } }
  end
end