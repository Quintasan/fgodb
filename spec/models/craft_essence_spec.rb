# frozen_string_literal: true

require 'spec_helper'

RSpec.describe CraftEssence do
  let(:craft_essence) { build(:craft_essence) }

  it "can be created" do
    expect(craft_essence).not_to be_nil
    expect(craft_essence).to be_a(CraftEssence)
  end

  it "must have a game id" do
    craft_essence.game_id = nil
    expect(craft_essence).not_to be_valid
  end
  it "must have a name" do
    craft_essence.name = nil
    expect(craft_essence).not_to be_valid

    craft_essence.name = ""
    expect(craft_essence).not_to be_valid
  end
  it "must provide a minimum HP bonus" do
    craft_essence.min_hp_bonus = nil
    expect(craft_essence).not_to be_valid
  end
  it "must provide a maxmium HP bonus" do
    craft_essence.max_hp_bonus = nil
    expect(craft_essence).not_to be_valid
  end
  it "must provide a minimum ATK bonus" do
    craft_essence.min_atk_bonus = nil
    expect(craft_essence).not_to be_valid
  end
  it "must provide a maxmium ATK bonus" do
    craft_essence.max_atk_bonus = nil
    expect(craft_essence).not_to be_valid
  end
  it "must have an effect" do
    craft_essence.effect = nil
    expect(craft_essence).not_to be_valid

    craft_essence.effect = ""
    expect(craft_essence).not_to be_valid
  end
  it "must have a limit broken effect" do
    craft_essence.limit_break = nil
    expect(craft_essence).not_to be_valid
  end
  it "must have a comment" do
    craft_essence.comment = nil
    expect(craft_essence).not_to be_valid

    craft_essence.comment = ""
    expect(craft_essence).not_to be_valid
  end
end
