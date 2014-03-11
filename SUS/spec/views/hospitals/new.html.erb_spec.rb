require 'spec_helper'

describe "hospitals/new" do
  before(:each) do
    assign(:hospital, stub_model(Hospital,
      :nome => "MyString",
      :codigo => 1,
      :endereco => "MyString"
    ).as_new_record)
  end

  it "renders new hospital form" do
    render

    assert_select "form[action=?][method=?]", hospitals_path, "post" do
      assert_select "input#hospital_nome[name=?]", "hospital[nome]"
      assert_select "input#hospital_codigo[name=?]", "hospital[codigo]"
      assert_select "input#hospital_endereco[name=?]", "hospital[endereco]"
    end
  end
end
