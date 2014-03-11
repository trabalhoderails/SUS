require 'spec_helper'

describe "internacaos/index" do
  before(:each) do
    assign(:internacaos, [
      stub_model(Internacao,
        :paciente => "",
        :medico => "",
        :enfermeiro => ""
      ),
      stub_model(Internacao,
        :paciente => "",
        :medico => "",
        :enfermeiro => ""
      )
    ])
  end

  it "renders a list of internacaos" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
