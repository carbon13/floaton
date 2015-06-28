require 'rails_helper'

RSpec.describe "Floaters", type: :request do
  describe "GET /floaters" do
    it "works! (now write some real specs)" do
      get floaters_path
      expect(response).to have_http_status(200)
    end
  end
end
