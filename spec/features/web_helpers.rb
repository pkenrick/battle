def sign_in_and_play
	visit("/")
    fill_in :player1, with: "P1"
    fill_in :player2, with: "P2"
    click_button "Play!"
end 