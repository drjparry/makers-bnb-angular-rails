require 'rails_helper'

feature 'spaces' do
  context 'no spaces have been added' do
    scenario 'should provide a prompt to add a space' do
      visit '/spaces'
      expect(page).to have_content('No spaces yet!')
      expect(page).to have_link('Add a space')
    end
  end

  context 'spaces have been added' do
    before do
      Space.create(name: "My place")
    end

    scenario 'display spaces' do
      visit '/spaces'
      expect(page).to have_content('My place')
      expect(page).not_to have_content('No spaces yet!')
    end
  end
end