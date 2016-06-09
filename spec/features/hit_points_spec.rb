feature 'Shows opponent\'s HP' do
  
  scenario 'initiating battle' do
    sign_in_and_play
    expect(page).to have_content Player::DEFAULT_HIT_POINTS
  end
  
end