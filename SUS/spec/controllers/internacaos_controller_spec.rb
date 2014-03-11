require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe InternacaosController do

  # This should return the minimal set of attributes required to create a valid
  # Internacao. As you add validations to Internacao, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "paciente" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InternacaosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all internacaos as @internacaos" do
      internacao = Internacao.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:internacaos)).to eq([internacao])
    end
  end

  describe "GET show" do
    it "assigns the requested internacao as @internacao" do
      internacao = Internacao.create! valid_attributes
      get :show, {:id => internacao.to_param}, valid_session
      expect(assigns(:internacao)).to eq(internacao)
    end
  end

  describe "GET new" do
    it "assigns a new internacao as @internacao" do
      get :new, {}, valid_session
      expect(assigns(:internacao)).to be_a_new(Internacao)
    end
  end

  describe "GET edit" do
    it "assigns the requested internacao as @internacao" do
      internacao = Internacao.create! valid_attributes
      get :edit, {:id => internacao.to_param}, valid_session
      expect(assigns(:internacao)).to eq(internacao)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Internacao" do
        expect {
          post :create, {:internacao => valid_attributes}, valid_session
        }.to change(Internacao, :count).by(1)
      end

      it "assigns a newly created internacao as @internacao" do
        post :create, {:internacao => valid_attributes}, valid_session
        expect(assigns(:internacao)).to be_a(Internacao)
        expect(assigns(:internacao)).to be_persisted
      end

      it "redirects to the created internacao" do
        post :create, {:internacao => valid_attributes}, valid_session
        expect(response).to redirect_to(Internacao.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved internacao as @internacao" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Internacao).to receive(:save).and_return(false)
        post :create, {:internacao => { "paciente" => "invalid value" }}, valid_session
        expect(assigns(:internacao)).to be_a_new(Internacao)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Internacao).to receive(:save).and_return(false)
        post :create, {:internacao => { "paciente" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested internacao" do
        internacao = Internacao.create! valid_attributes
        # Assuming there are no other internacaos in the database, this
        # specifies that the Internacao created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Internacao).to receive(:update).with({ "paciente" => "" })
        put :update, {:id => internacao.to_param, :internacao => { "paciente" => "" }}, valid_session
      end

      it "assigns the requested internacao as @internacao" do
        internacao = Internacao.create! valid_attributes
        put :update, {:id => internacao.to_param, :internacao => valid_attributes}, valid_session
        expect(assigns(:internacao)).to eq(internacao)
      end

      it "redirects to the internacao" do
        internacao = Internacao.create! valid_attributes
        put :update, {:id => internacao.to_param, :internacao => valid_attributes}, valid_session
        expect(response).to redirect_to(internacao)
      end
    end

    describe "with invalid params" do
      it "assigns the internacao as @internacao" do
        internacao = Internacao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Internacao).to receive(:save).and_return(false)
        put :update, {:id => internacao.to_param, :internacao => { "paciente" => "invalid value" }}, valid_session
        expect(assigns(:internacao)).to eq(internacao)
      end

      it "re-renders the 'edit' template" do
        internacao = Internacao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Internacao).to receive(:save).and_return(false)
        put :update, {:id => internacao.to_param, :internacao => { "paciente" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested internacao" do
      internacao = Internacao.create! valid_attributes
      expect {
        delete :destroy, {:id => internacao.to_param}, valid_session
      }.to change(Internacao, :count).by(-1)
    end

    it "redirects to the internacaos list" do
      internacao = Internacao.create! valid_attributes
      delete :destroy, {:id => internacao.to_param}, valid_session
      expect(response).to redirect_to(internacaos_url)
    end
  end

end