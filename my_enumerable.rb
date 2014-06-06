module MyEnumerable
  # enumerable is a private method in the class where the module is included

  def each &the_block
    for element in enumerable
      the_block.call(element)
    end
  end

  def select
  end

  def map
  end

  def inject
  end
end
