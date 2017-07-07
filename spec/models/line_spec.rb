# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Line do
  let(:line_type) { create(:line_type) }

  it "can be created" do
    line = build(:line, line_type: line_type)
    expect(line).not_to be_nil
    expect(line).to be_a(Line)
    expect(line.valid?).to be_truthy
    expect { line.save }.to change(Line, :count).by(1)
  end

  it "must have a text" do
    line = build(:line, text: nil)
    expect(line.valid?).to be_falsey
    expect(line.errors.count).to eq(1)

    line = build(:line, text: "")
    expect(line.valid?).to be_falsey
    expect(line.errors.count).to eq(1)
  end
end
