RSpec.describe SOME_CLASS do
end

it 'SOME STRING' do
end

expect([].length).to eq(0)

expect([1,2,3,4].length).not_to eq(0)

before do
  @a = Array.new
end
expect(@a.length).to eq(0)


RSpec.describe Array do
  before do
    @a = Array.new
  end
  it 'tests the length of the array' do
    expect(@a.length).to eq(0)
  end
end

rspec .
