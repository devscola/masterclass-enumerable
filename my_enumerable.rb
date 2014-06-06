module MyEnumerable
  # enumerable is a private method in the class where the module is included

  def each
    for element in enumerable
      yield element
    end
  end

  def select
  end

  def map
  end

  def inject
  end
end
