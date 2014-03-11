require 'spec_helper'

describe "medicos/index" do
  before(:each) do
    assign(:medicos, [
      stub_model(Medico,
        :nome => "Nome",
        :matricula => "Matricula",
        :especialidade => "Especialidade"
      ),
      stub_model(Medico,
        :nome => "Nome",
        :matricula => "Matricula",
        :especialidade => "Especialidade"
      )
    ])
  end

  it "renders a list of medicos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Especialidade".to_s, :count => 2
  end
end
