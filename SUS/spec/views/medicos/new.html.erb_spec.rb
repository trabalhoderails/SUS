require 'spec_helper'

describe "medicos/new" do
  before(:each) do
    assign(:medico, stub_model(Medico,
      :nome => "MyString",
      :matricula => "MyString",
      :especialidade => "MyString"
    ).as_new_record)
  end

  it "renders new medico form" do
    render

    assert_select "form[action=?][method=?]", medicos_path, "post" do
      assert_select "input#medico_nome[name=?]", "medico[nome]"
      assert_select "input#medico_matricula[name=?]", "medico[matricula]"
      assert_select "input#medico_especialidade[name=?]", "medico[especialidade]"
    end
  end
end
