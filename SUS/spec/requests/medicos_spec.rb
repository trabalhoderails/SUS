require 'spec_helper'

describe "Medicos" do
  describe "GET /medicos" do
    it "works! (now write some real specs)" do
      get medicos_path
      expect(response.status).to be(200)
    end
  end
end
