# frozen_string_literal: true

require 'spec_helper'

RSpec.describe LineType do
  it "can be created" do
    line_type = build(:line_type)
    expect(line_type).not_to be_nil
    expect(line_type).to be_a(LineType)
    expect(line_type.valid?).to be_truthy
    expect { line_type.save }.to change(LineType, :count).by(1)
  end

  it "must have a name" do
    line_type = build(:line_type, name: nil)
    expect(line_type.valid?).to be_falsey
  end

  it "must have a unique name" do
    create(:line_type, name: "Test")
    line_type = build(:line_type, name: "Test")
    expect(line_type.valid?).to be_falsey
    expect(line_type.errors.count).to eq(1)
  end
end
