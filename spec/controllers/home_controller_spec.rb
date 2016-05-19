require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  context 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'assigns the brands' do
      get :index
      expect(assigns(:brands)).to eq(Brand.all)
    end
  end
end
