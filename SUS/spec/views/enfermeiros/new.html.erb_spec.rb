require 'spec_helper'

describe "enfermeiros/new" do
  before(:each) do
    assign(:enfermeiro, stub_model(Enfermeiro,
      :nome => "MyString",
      :matricula => "MyString",
      :cargo => "MyString"
    ).as_new_record)
  end

  it "renders new enfermeiro form" do
    render

    assert_select "form[action=?][method=?]", enfermeiros_path, "post" do
      assert_select "input#enfermeiro_nome[name=?]", "enfermeiro[nome]"
      assert_select "input#enfermeiro_matricula[name=?]", "enfermeiro[matricula]"
      assert_select "input#enfermeiro_cargo[name=?]", "enfermeiro[cargo]"
    end
  end
end
