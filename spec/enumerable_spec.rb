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
end

describe "map" do
end

describe "inject" do
end
