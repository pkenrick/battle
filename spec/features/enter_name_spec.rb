feature 'Enter names' do
  
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Paul'
    fill_in :player_2_name, with: 'Enzo'
    click_button 'Submit'
    expect(page).to have_content 'Paul vs. Enzo'
  end

end