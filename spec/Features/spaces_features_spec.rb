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

  context 'creating spaces' do
    scenario 'prompts user to fill out a form to create a new space then displays the new space' do
      visit '/spaces'
      click_link 'Add a space'
      fill_in 'Name', with: 'My place'
      fill_in 'Price', with: 15
      fill_in 'Location', with: 'London'
      fill_in 'Size', with: 15.5
      fill_in 'Property type', with: 'Bungalow'
      click_button 'Create Space'
      expect(page).to have_content "My place"
      expect(current_path).to eq '/spaces'
    end
  end
end