require 'spec_helper'

describe "hospitals/show" do
  before(:each) do
    @hospital = assign(:hospital, stub_model(Hospital,
      :nome => "Nome",
      :codigo => 1,
      :endereco => "Endereco"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Endereco/)
  end
end
