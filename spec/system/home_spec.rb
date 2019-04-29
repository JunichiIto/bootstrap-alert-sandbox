require 'rails_helper'

RSpec.feature "Projects", type: :system do
  it 'shows notice' do
    visit root_path
    expect(page).to have_css '.alert-success', text: 'Hello, world!'
    expect(page).to have_selector '.alert-success', text: 'Hello, world!'
  end

  context 'with JS driver' do
    it 'shows notice', js: true do
      visit root_path
      expect(page).to have_css '.alert-success', text: 'Hello, world!'
      expect(page).to have_selector '.alert-success', text: 'Hello, world!'
    end
  end
end
