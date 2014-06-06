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
end

describe "inject" do
end
