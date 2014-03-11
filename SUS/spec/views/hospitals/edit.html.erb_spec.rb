require 'spec_helper'

describe "hospitals/edit" do
  before(:each) do
    @hospital = assign(:hospital, stub_model(Hospital,
      :nome => "MyString",
      :codigo => 1,
      :endereco => "MyString"
    ))
  end

  it "renders the edit hospital form" do
    render

    assert_select "form[action=?][method=?]", hospital_path(@hospital), "post" do
      assert_select "input#hospital_nome[name=?]", "hospital[nome]"
      assert_select "input#hospital_codigo[name=?]", "hospital[codigo]"
      assert_select "input#hospital_endereco[name=?]", "hospital[endereco]"
    end
  end
end
