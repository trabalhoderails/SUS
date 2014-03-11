require 'spec_helper'

describe "Pacientes" do
  describe "GET /pacientes" do
    it "works! (now write some real specs)" do
      get pacientes_path
      expect(response.status).to be(200)
    end
  end
end
