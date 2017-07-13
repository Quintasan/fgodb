require 'spec_helper'

RSpec.describe Trait do
  it "can be created" do
    trait = build(:trait)
    expect(trait).not_to be_nil
    expect(trait).to be_a(Trait)
    expect(trait.valid?).to be_truthy
    expect { trait.save }.to change(Trait, :count).by(1)
  end

  it "must have a name" do
    trait = build(:trait, name: nil)
    expect(trait.valid?).to be_falsey

    trait = build(:trait, name: "")
    expect(trait.valid?).to be_falsey
  end

  it "must have a unique name" do
    create(:trait, name: "Test")
    trait = build(:trait, name: "Test")
    expect(trait.valid?).to be_falsey
    expect(trait.errors.count).to eq(1)
  end
end
