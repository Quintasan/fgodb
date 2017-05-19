# frozen_string_literal: true

require 'spec_helper'

RSpec.describe VoiceActor do
  let(:voice_actor) { build(:voice_actor) }

  it "can be created" do
    expect(voice_actor).not_to be_nil
    expect(voice_actor).to be_a(VoiceActor)
  end

  it "must have either first name, nickname, or last name" do
    voice_actor = build(:voice_actor, nickname: nil, last_name: nil)
    expect(voice_actor.valid?).to be_truthy

    voice_actor = build(:voice_actor, first_name: nil, last_name: nil)
    expect(voice_actor.valid?).to be_truthy

    voice_actor = build(:voice_actor, first_name: nil, nickname: nil)
    expect(voice_actor.valid?).to be_truthy

    voice_actor = build(:voice_actor, first_name: nil, nickname: nil, last_name: nil)
    expect(voice_actor.valid?).to be_falsey
    expect(voice_actor.errors.count).to eq(1)

    voice_actor = build(:voice_actor, first_name: "", nickname: "", last_name: "")
    expect(voice_actor.valid?).to be_falsey
    expect(voice_actor.errors.count).to eq(1)
  end
end
