require './my_array'

my_array = MyArray.new([1,2,3,4,5])

describe "each" do
  it "iterates over the entire collection" do
    ruby_array = []
    my_array.each do |i|
      ruby_array << i
    end
    expect(ruby_array).to eq(my_array.to_a)
  end
end

describe "select" do
  it "filters the collection based on a boolean expression" do
    ruby_filtered_array = [1,2,3,4,5].select { |i| i >= 3 }
    my_filtered_array   = my_array.select { |i| i >= 3 }
    expect(my_filtered_array.to_a).to eq(ruby_filtered_array)
  end
end

describe "map" do
  it "transforms the elements in the collection" do
    ruby_transformed_array = [1,2,3,4,5].map { |i| i * i }
    my_transformed_array   = my_array.map { |i| i * i }
    expect(my_transformed_array.to_a).to eq(ruby_transformed_array)
  end
end

describe "inject" do
  it "reduces the elements in the collection to a single value" do
    ruby_result = [1,2,3,4,5].inject { |sum, i| sum + i }
    my_result   = my_array.inject { |sum, i| sum + i }
    expect(my_result).to be(ruby_result)
  end
  it "uses an initial value to reduce the elements in the collection" do
    ruby_result = [1,2,3,4,5].inject(100) { |sum, i| sum + i }
    my_result   = my_array.inject(100) { |sum, i| sum + i }
    expect(my_result).to be(ruby_result)
  end
end
