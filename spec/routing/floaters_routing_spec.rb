require "rails_helper"

RSpec.describe FloatersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/floaters").to route_to("floaters#index")
    end

    it "routes to #new" do
      expect(:get => "/floaters/new").to route_to("floaters#new")
    end

    it "routes to #show" do
      expect(:get => "/floaters/1").to route_to("floaters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/floaters/1/edit").to route_to("floaters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/floaters").to route_to("floaters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/floaters/1").to route_to("floaters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/floaters/1").to route_to("floaters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/floaters/1").to route_to("floaters#destroy", :id => "1")
    end

  end
end
