require 'rails_helper'

describe IdeasController do
  context "show" do
    let(:idea) { Idea.new(body: "this is an idea") }

    it "returns the idea when found" do
      IdeaRepository.save(idea)

      get :show, { id: 1, body: "this is an idea" }

      expect(response.status).to be_success
      assigns(:idea).to eq idea
    end
  end
end