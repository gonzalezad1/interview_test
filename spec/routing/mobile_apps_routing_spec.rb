require "rails_helper"

RSpec.describe MobileAppsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mobile_apps").to route_to("mobile_apps#index")
    end

    it "routes to #new" do
      expect(:get => "/mobile_apps/new").to route_to("mobile_apps#new")
    end

    it "routes to #show" do
      expect(:get => "/mobile_apps/1").to route_to("mobile_apps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mobile_apps/1/edit").to route_to("mobile_apps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mobile_apps").to route_to("mobile_apps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mobile_apps/1").to route_to("mobile_apps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mobile_apps/1").to route_to("mobile_apps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mobile_apps/1").to route_to("mobile_apps#destroy", :id => "1")
    end

  end
end
