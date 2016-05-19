require 'rails_helper'

RSpec.describe ModelsController, type: :controller do
  context 'GET index' do
    let(:params) { { webmotors_brand_id: 1 } }

    before do
      get :index, params
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'assigns the models' do
      expect(assigns(:models)).to eq(Model.where(brand_id: params[:webmotors_brand_id]))
    end
  end
end
