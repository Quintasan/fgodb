# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ClassSkill do
  let(:rank) { create(:rank, value: "EX") }

  it "can be created" do
    class_skill = build(:class_skill, rank: rank)
    expect(class_skill).not_to be_nil
    expect(class_skill).to be_a(ClassSkill)
    expect(class_skill.valid?).to be_truthy
    expect { class_skill.save }.to change(ClassSkill, :count).by(1)
  end

  it "must have a name" do
    class_skill = build(:class_skill, rank: rank, name: nil)
    expect(class_skill.valid?).to be_falsey
    expect(class_skill.errors.count).to eq(1)

    class_skill = build(:class_skill, rank: rank, name: "")
    expect(class_skill.valid?).to be_falsey
    expect(class_skill.errors.count).to eq(1)
  end

  it "must have a rank" do
    class_skill = build(:class_skill, rank: nil)
    expect(class_skill.valid?).to be_falsey
    expect(class_skill.errors.count).to eq(1)
  end

  it "must have a unique name and rank" do
    create(:class_skill, name: "Mad Enchancement", rank: rank)
    class_skill = build(:class_skill, name: "Mad Enchancement", rank: rank)
    expect(class_skill.valid?).to be_falsey
    expect(class_skill.errors.count).to eq(1)
  end

  it "must have an effect" do
    class_skill = build(:class_skill, rank: rank, effect: nil)
    expect(class_skill.valid?).to be_falsey
    expect(class_skill.errors.count).to eq(1)

    class_skill = build(:class_skill, rank: rank, effect: "")
    expect(class_skill.valid?).to be_falsey
    expect(class_skill.errors.count).to eq(1)
  end
end
