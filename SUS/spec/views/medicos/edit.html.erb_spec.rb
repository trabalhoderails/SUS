require 'spec_helper'

describe "medicos/edit" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "MyString",
      :matricula => "MyString",
      :especialidade => "MyString"
    ))
  end

  it "renders the edit medico form" do
    render

    assert_select "form[action=?][method=?]", medico_path(@medico), "post" do
      assert_select "input#medico_nome[name=?]", "medico[nome]"
      assert_select "input#medico_matricula[name=?]", "medico[matricula]"
      assert_select "input#medico_especialidade[name=?]", "medico[especialidade]"
    end
  end
end
