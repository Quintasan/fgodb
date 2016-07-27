require 'spec_helper'

RSpec.describe ServantRarity do
  let(:servant_rarity) { build(:servant_rarity) }

  it "can be created" do
    expect(servant_rarity).not_to be_nil
    expect(servant_rarity).to be_a(ServantRarity)
  end

  it "must have a rarity" do
    servant_rarity = build(:servant_rarity, rarity: nil)
    expect(servant_rarity.valid?).to be_falsey
    expect(servant_rarity.errors.count).to eq(1)
  end

  it "must have a maximum level" do
    servant_rarity = build(:servant_rarity, max_level: nil)
    expect(servant_rarity.valid?).to be_falsey
    expect(servant_rarity.errors.count).to eq(1)
  end

  it "rarity can't be negative" do
    servant_rarity = build(:servant_rarity, rarity: -1)
    expect(servant_rarity.valid?).to be_falsey
    expect(servant_rarity.errors.count).to eq(1)
  end

  it "maximum level can't be negative" do
    servant_rarity = build(:servant_rarity, max_level: -1)
    expect(servant_rarity.valid?).to be_falsey
    expect(servant_rarity.errors.count).to eq(1)
  end
end
