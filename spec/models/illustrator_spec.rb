require 'spec_helper'

RSpec.describe Illustrator do
  let(:illustrator) { build(:illustrator) }

  it "can be created" do
    expect(illustrator).not_to be_nil
  end

  it "must have either first name, nickname, or last name" do
    illustrator = build(:illustrator, nickname: nil, last_name: nil)
    expect(illustrator.valid?).to be_truthy
    illustrator = build(:illustrator, first_name: nil, last_name: nil)
    expect(illustrator.valid?).to be_truthy
    illustrator = build(:illustrator, first_name: nil, nickname: nil)
    expect(illustrator.valid?).to be_truthy
    illustrator = build(:illustrator, first_name: nil, nickname: nil, last_name: nil)
    expect(illustrator.valid?).to be_falsey
  end
end
