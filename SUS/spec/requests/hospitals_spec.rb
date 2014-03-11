require 'spec_helper'

describe "Hospitals" do
  describe "GET /hospitals" do
    it "works! (now write some real specs)" do
      get hospitals_path
      expect(response.status).to be(200)
    end
  end
end
