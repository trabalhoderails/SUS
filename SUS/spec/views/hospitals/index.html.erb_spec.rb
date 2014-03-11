require 'spec_helper'

describe "hospitals/index" do
  before(:each) do
    assign(:hospitals, [
      stub_model(Hospital,
        :nome => "Nome",
        :codigo => 1,
        :endereco => "Endereco"
      ),
      stub_model(Hospital,
        :nome => "Nome",
        :codigo => 1,
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
