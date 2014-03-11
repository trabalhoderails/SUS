require 'spec_helper'

describe "pacientes/index" do
  before(:each) do
    assign(:pacientes, [
      stub_model(Paciente,
        :nome => "Nome",
        :codigo => "Codigo",
        :idade => 1
      ),
      stub_model(Paciente,
        :nome => "Nome",
        :codigo => "Codigo",
        :idade => 1
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
