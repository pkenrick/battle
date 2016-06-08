feature 'Attack' do
  scenario 'Selecting to attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Paul has attacked Enzo"
  end

end
