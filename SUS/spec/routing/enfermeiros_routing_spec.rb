require "spec_helper"

describe EnfermeirosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/enfermeiros").to route_to("enfermeiros#index")
    end

    it "routes to #new" do
      expect(:get => "/enfermeiros/new").to route_to("enfermeiros#new")
    end

    it "routes to #show" do
      expect(:get => "/enfermeiros/1").to route_to("enfermeiros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/enfermeiros/1/edit").to route_to("enfermeiros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/enfermeiros").to route_to("enfermeiros#create")
    end

    it "routes to #update" do
      expect(:put => "/enfermeiros/1").to route_to("enfermeiros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/enfermeiros/1").to route_to("enfermeiros#destroy", :id => "1")
    end

  end
end
