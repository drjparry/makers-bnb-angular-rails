require 'rails_helper'

feature 'spaces' do
	context 'no spaces have been added' do
		scenario 'should provide a prompt to add a space' do
			visit '/spaces'
			expect(page).to have_content('No spaces yet!')
			expect(page).to have_link('Add a space')
		end
	end

end