feature 'Switch_turn' do
  
  scenario 'swithing turns' do
    sign_in_and_play
    click_button 'End turn'
    expect(page).to have_content "Paul and Enzo have switched turns"
  end

end