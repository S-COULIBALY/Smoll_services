require "rails_helper"

RSpec.describe RelocationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/relocations").to route_to("relocations#index")
    end

    it "routes to #new" do
      expect(:get => "/relocations/new").to route_to("relocations#new")
    end

    it "routes to #show" do
      expect(:get => "/relocations/1").to route_to("relocations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/relocations/1/edit").to route_to("relocations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/relocations").to route_to("relocations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/relocations/1").to route_to("relocations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/relocations/1").to route_to("relocations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/relocations/1").to route_to("relocations#destroy", :id => "1")
    end

  end
end
