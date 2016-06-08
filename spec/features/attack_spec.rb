feature 'Attack' do
  
  scenario 'Selecting to attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Paul has attacked Enzo"
  end

  scenario 'attack reduces opponent\'s HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Enzo: 50HP'
  end

end
