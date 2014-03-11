require 'spec_helper'

describe "enfermeiros/index" do
  before(:each) do
    assign(:enfermeiros, [
      stub_model(Enfermeiro,
        :nome => "Nome",
        :matricula => "Matricula",
        :cargo => "Cargo"
      ),
      stub_model(Enfermeiro,
        :nome => "Nome",
        :matricula => "Matricula",
        :cargo => "Cargo"
      )
    ])
  end

  it "renders a list of enfermeiros" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
  end
end
