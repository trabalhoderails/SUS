require 'spec_helper'

describe "enfermeiros/show" do
  before(:each) do
    @enfermeiro = assign(:enfermeiro, stub_model(Enfermeiro,
      :nome => "Nome",
      :matricula => "Matricula",
      :cargo => "Cargo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Matricula/)
    expect(rendered).to match(/Cargo/)
  end
end
