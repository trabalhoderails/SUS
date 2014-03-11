require 'spec_helper'

describe "enfermeiros/edit" do
  before(:each) do
    @enfermeiro = assign(:enfermeiro, stub_model(Enfermeiro,
      :nome => "MyString",
      :matricula => "MyString",
      :cargo => "MyString"
    ))
  end

  it "renders the edit enfermeiro form" do
    render

    assert_select "form[action=?][method=?]", enfermeiro_path(@enfermeiro), "post" do
      assert_select "input#enfermeiro_nome[name=?]", "enfermeiro[nome]"
      assert_select "input#enfermeiro_matricula[name=?]", "enfermeiro[matricula]"
      assert_select "input#enfermeiro_cargo[name=?]", "enfermeiro[cargo]"
    end
  end
end
