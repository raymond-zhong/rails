require_relative 'solar_system'
RSpec.describe Planet do
  it "Planet should have a name, description and population" do
    p1 = Planet.new
    p1.name = "Name"
    expect(p1.name).to eq("Name")
    p1.description = "Description"
    expect(p1.description).to eq("Description")
    p1.population = 1
    expect(p1.population).to eq(1)
  end
end
RSpec.describe Solar_System do
  it "Solar System should be initialized with a name, if not its default name should be 'Andromeda'" do
    s1 = Solar_System.new
    expect(s1.name).to eq("Andromeda")
    s1.name = "Name"
    expect(s1.name).to eq("Name")
  end
  it "The Solar System class should contain a list of all planets in it." do
    s1 = Solar_System.new
    expect(s1.planets).to eq(["Mercury", "Venus", "Earth", "Mars", "Asteroid Belt", "Jupiter", "Saturn", "Uranus", "Neptune"])
  end
  it "The Solar System class should contain a list of all planets in it." do
    s1 = Solar_System.new
    expect(s1.planets_count).to eq(9)
  end
  it "The planets added to the Solar System should only be from the Planet class" do
    p1 = Planet.new
    # puts p1.class.ancestors
    expect(p1.class.ancestors.include?(Planet)).to eq(true)
  end
  it "Solar System should have a method called Super Nova that destroys all of the planets in it." do
    s1 = Solar_System.new
    expect(s1.Super_Nova).to eq([])
  end
end
