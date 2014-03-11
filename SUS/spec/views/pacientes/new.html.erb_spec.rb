require 'spec_helper'

describe "pacientes/new" do
  before(:each) do
    assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :codigo => "MyString",
      :idade => 1
    ).as_new_record)
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do
      assert_select "input#paciente_nome[name=?]", "paciente[nome]"
      assert_select "input#paciente_codigo[name=?]", "paciente[codigo]"
      assert_select "input#paciente_idade[name=?]", "paciente[idade]"
    end
  end
end
