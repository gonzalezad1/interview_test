require 'rails_helper'

RSpec.describe "MobileApps", type: :request do
  describe "GET /mobile_apps" do
    it "works! (now write some real specs)" do
      get mobile_apps_path
      expect(response).to have_http_status(200)
    end
  end
end
