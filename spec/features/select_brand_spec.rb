require 'rails_helper'

RSpec.describe 'Select brand', type: :feature do
  before { visit root_path }

  scenario 'when access the root_path' do
    expect(page).to have_css('label', text: 'Escolha a Fabricante:')
    expect(page).to have_button('Buscar modelos')
  end

  scenario 'when on brand it is selected and click submit button' do
    page.select 'FIAT', from: 'webmotors_brand_id'
    click_button 'Buscar modelos'

    expect(page).to have_css('a')
    expect(page).to have_css('ul')
  end
end
