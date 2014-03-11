require 'spec_helper'

describe "medicos/show" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "Nome",
      :matricula => "Matricula",
      :especialidade => "Especialidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Matricula/)
    expect(rendered).to match(/Especialidade/)
  end
end
