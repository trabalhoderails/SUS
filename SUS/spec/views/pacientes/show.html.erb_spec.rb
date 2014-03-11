require 'spec_helper'

describe "pacientes/show" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "Nome",
      :codigo => "Codigo",
      :idade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/1/)
  end
end
