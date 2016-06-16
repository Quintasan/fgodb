require 'spec_helper'

RSpec.describe NoblePhantasmType do
  let(:noble_phantasm_type) { build(:noble_phantasm_type) }

  it "can be created" do
    expect(noble_phantasm_type).not_to be_nil
    expect(noble_phantasm_type).to be_a(NoblePhantasmType)
  end

  it "must have a name" do
    noble_phantasm_type = build(:noble_phantasm_type, name: nil)
    expect(noble_phantasm_type.valid?).to be_falsey
    expect(noble_phantasm_type.errors.count).to eq(1)

    noble_phantasm_type = build(:noble_phantasm_type, name: "")
    expect(noble_phantasm_type.valid?).to be_falsey
    expect(noble_phantasm_type.errors.count).to eq(1)
  end
end
