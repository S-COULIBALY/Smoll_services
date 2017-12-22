require 'rails_helper'

RSpec.describe "Relocations", type: :request do
  describe "GET /relocations" do
    it "works! (now write some real specs)" do
      get relocations_path
      expect(response).to have_http_status(200)
    end
  end
end
