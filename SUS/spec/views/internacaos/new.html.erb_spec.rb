require 'spec_helper'

describe "internacaos/new" do
  before(:each) do
    assign(:internacao, stub_model(Internacao,
      :paciente => "",
      :medico => "",
      :enfermeiro => ""
    ).as_new_record)
  end

  it "renders new internacao form" do
    render

    assert_select "form[action=?][method=?]", internacaos_path, "post" do
      assert_select "input#internacao_paciente[name=?]", "internacao[paciente]"
      assert_select "input#internacao_medico[name=?]", "internacao[medico]"
      assert_select "input#internacao_enfermeiro[name=?]", "internacao[enfermeiro]"
    end
  end
end
