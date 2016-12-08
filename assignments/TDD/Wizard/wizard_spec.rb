require_relative 'wizard'
RSpec.describe Wizard do
  it 'Wizard has a default health of 50 and intelligence of 25' do
    expect(Wizard.new.health).to eq(50)
    expect(Wizard.new.intelligence).to eq(25)
    end
  it 'Wizard has a heal method that increases health by 10' do
    expect(Wizard.new.health).to eq(50)
    expect(Wizard.new.heal.health).to eq(60)
    end
  it 'Wizard has an ancestor chain that includes Human' do
    expect(Wizard.ancestors.include?(Human)).to eq(true)
    end
  it "Wizard has a fireball method that attacks an object and reduces the object's health by 20" do
    w1=Wizard.new
    w2=Wizard.new
    expect(w1.health).to eq(50)
    w2.fireball(w1)
    expect(w1.health).to eq(30)
    end
end
