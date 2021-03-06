module MyEnumerable
  # enumerable is a private method in the class where the module is included

  def each &the_block
    for element in enumerable
      the_block.call(element)
    end
  end

  def select
    result = []
    for element in enumerable
      result << element if (yield element)
    end
    result
  end

  def map
    result = []
    for element in enumerable
      result << (yield element)
    end
    result
  end

  def inject initial_value=0
    result = initial_value
    for element in enumerable
      result = yield(result, element)
    end
    result
  end
end
