require 'spec_helper'

describe "internacaos/show" do
  before(:each) do
    @internacao = assign(:internacao, stub_model(Internacao,
      :paciente => "",
      :medico => "",
      :enfermeiro => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
