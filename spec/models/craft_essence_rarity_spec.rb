# frozen_string_literal: true

require 'spec_helper'

RSpec.describe CraftEssenceRarity do
  let(:craft_essence_rarity) { build(:craft_essence_rarity) }

  it "can be created" do
    expect(craft_essence_rarity).not_to be_nil
    expect(craft_essence_rarity).to be_a(CraftEssenceRarity)
    expect(craft_essence_rarity.valid?).to be_truthy
  end

  it "must have a rarity" do
    craft_essence_rarity = build(:craft_essence_rarity, rarity: nil)
    expect(craft_essence_rarity.valid?).to be_falsey
    expect(craft_essence_rarity.errors.count).to eq(1)
  end

  it "must have a maximum level" do
    craft_essence_rarity = build(:craft_essence_rarity, max_level: nil)
    expect(craft_essence_rarity.valid?).to be_falsey
    expect(craft_essence_rarity.errors.count).to eq(1)
  end

  it "it's rarity can't be negative" do
    craft_essence_rarity = build(:craft_essence_rarity, rarity: -1)
    expect(craft_essence_rarity.valid?).to be_falsey
    expect(craft_essence_rarity.errors.count).to eq(1)
  end

  it "it's maximum level can't be negative" do
    craft_essence_rarity = build(:craft_essence_rarity, max_level: -1)
    expect(craft_essence_rarity.valid?).to be_falsey
    expect(craft_essence_rarity.errors.count).to eq(1)
  end
end
