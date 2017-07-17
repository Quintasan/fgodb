# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Attribute do
  let(:attribute) { build(:attribute) }

  it "can be created" do
    expect(attribute).not_to be_nil
    expect(attribute).to be_a(Attribute)
  end

  it "must have a value" do
    attribute = build(:attribute, name: nil)
    expect(attribute.valid?).to be_falsey
    expect(attribute.errors.count).to eq(1)

    attribute = build(:attribute, name: "")
    expect(attribute.valid?).to be_falsey
    expect(attribute.errors.count).to eq(1)
  end

  it "must have a unique name" do
    create(:attribute, name: "Test")
    attribute = build(:attribute, name: "Test")
    expect(attribute.valid?).to be_falsey
    expect(attribute.errors.count).to eq(1)
  end
end
