require './my_enumerable'

class MyArray
  include MyEnumerable

  def initialize(collection)
    @collection = collection
  end

  def to_s
    @collection.to_s
  end

  def to_a
    @collection
  end

  private

  def enumerable
    @collection
  end
end
