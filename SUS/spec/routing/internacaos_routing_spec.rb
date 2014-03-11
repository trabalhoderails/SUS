require "spec_helper"

describe InternacaosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/internacaos").to route_to("internacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/internacaos/new").to route_to("internacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/internacaos/1").to route_to("internacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/internacaos/1/edit").to route_to("internacaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/internacaos").to route_to("internacaos#create")
    end

    it "routes to #update" do
      expect(:put => "/internacaos/1").to route_to("internacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/internacaos/1").to route_to("internacaos#destroy", :id => "1")
    end

  end
end
