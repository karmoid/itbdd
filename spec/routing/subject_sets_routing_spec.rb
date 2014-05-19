require "spec_helper"

describe SubjectSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/subject_sets").should route_to("subject_sets#index")
    end

    it "routes to #new" do
      get("/subject_sets/new").should route_to("subject_sets#new")
    end

    it "routes to #show" do
      get("/subject_sets/1").should route_to("subject_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subject_sets/1/edit").should route_to("subject_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subject_sets").should route_to("subject_sets#create")
    end

    it "routes to #update" do
      put("/subject_sets/1").should route_to("subject_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subject_sets/1").should route_to("subject_sets#destroy", :id => "1")
    end

  end
end
