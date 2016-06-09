
feature 'changing player turns' do
	scenario 'the initial turn' do
		sign_in_and_play
		expect(page).to have_content "Dave's turn"
	end

	scenario 'player 2 gets to attack after player 1' do
		sign_in_and_play
		click_button 'Attack'
		click_button 'OK'
		expect(page).not_to have_content "Dave's turn"
		expect(page).to have_content "Harry's turn"
	end

end
