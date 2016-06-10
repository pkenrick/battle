feature "game_over" do
	scenario "displays game over message when HP reaches 0" do
		sign_in_and_play
		15.times{click_button 'Attack';
		click_button 'OK'}
		expect(page).to have_content "Harry lost. Dave won!"
	end
end
