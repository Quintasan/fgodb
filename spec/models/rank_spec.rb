# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Rank do
  let(:rank) { build(:rank) }

  it "can be created" do
    expect(rank).not_to be_nil
    expect(rank).to be_a(Rank)
  end

  it "must have a value" do
    rank = build(:rank, value: nil)
    expect(rank.valid?).to be_falsey
    expect(rank.errors.count).to eq(1)

    rank = build(:rank, value: "")
    expect(rank.valid?).to be_falsey
    expect(rank.errors.count).to eq(1)
  end
end
