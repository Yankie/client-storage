require "spec_helper"

describe SharedResourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/shared_resources").should route_to("shared_resources#index")
    end

    it "routes to #new" do
      get("/shared_resources/new").should route_to("shared_resources#new")
    end

    it "routes to #show" do
      get("/shared_resources/1").should route_to("shared_resources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shared_resources/1/edit").should route_to("shared_resources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shared_resources").should route_to("shared_resources#create")
    end

    it "routes to #update" do
      put("/shared_resources/1").should route_to("shared_resources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shared_resources/1").should route_to("shared_resources#destroy", :id => "1")
    end

  end
end
