require 'spec_helper'

describe "internacaos/edit" do
  before(:each) do
    @internacao = assign(:internacao, stub_model(Internacao,
      :paciente => "",
      :medico => "",
      :enfermeiro => ""
    ))
  end

  it "renders the edit internacao form" do
    render

    assert_select "form[action=?][method=?]", internacao_path(@internacao), "post" do
      assert_select "input#internacao_paciente[name=?]", "internacao[paciente]"
      assert_select "input#internacao_medico[name=?]", "internacao[medico]"
      assert_select "input#internacao_enfermeiro[name=?]", "internacao[enfermeiro]"
    end
  end
end
