require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  describe 'Credentials' do
    it 'stubs credentials' do
      allow(Rails.application.credentials).to receive(:olimart).and_return('123')
      expect(Rails.application.credentials.olimart).to eq('123')
    end
  end
  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    save_screenshot
  end

end
