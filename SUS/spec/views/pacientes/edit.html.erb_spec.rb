require 'spec_helper'

describe "pacientes/edit" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :codigo => "MyString",
      :idade => 1
    ))
  end

  it "renders the edit paciente form" do
    render

    assert_select "form[action=?][method=?]", paciente_path(@paciente), "post" do
      assert_select "input#paciente_nome[name=?]", "paciente[nome]"
      assert_select "input#paciente_codigo[name=?]", "paciente[codigo]"
      assert_select "input#paciente_idade[name=?]", "paciente[idade]"
    end
  end
end
