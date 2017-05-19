# frozen_string_literal: true

require 'spec_helper'

RSpec.describe "PagesController" do
  describe "GET index" do
    before(:each) do
      get "/"
    end

    it "responds with 200 Ok" do
      expect(last_response).to be_ok
    end

    it "renders correctly" do
      expect(last_response.body).to include("Fate/Grand Order Database")
    end
  end
end
