# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ServantClass do
  it "can be created" do
    servant_class = build(:servant_class)
    expect(servant_class).not_to be_nil
    expect(servant_class).to be_a(ServantClass)
    expect(servant_class.valid?).to be_truthy
    expect { servant_class.save }.to change(ServantClass, :count).by(1)
  end

  it "must have a name" do
    servant_class = build(:servant_class, name: nil)
    expect(servant_class.valid?).to be_falsey

    servant_class = build(:servant_class, name: "")
    expect(servant_class.valid?).to be_falsey
  end

  it "must have a unique name" do
    create(:servant_class, name: "Test")
    servant_class = build(:servant_class, name: "Test")
    expect(servant_class.valid?).to be_falsey
    expect(servant_class.errors.count).to eq(1)
  end
end
