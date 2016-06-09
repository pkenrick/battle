require_relative '../spec_helper'

feature "hit points" do
  scenario 'allows user to see other players hit points' do
    sign_in_and_play
    expect(page).to have_content "P2: 60HP"
  end

  scenario 'allow attacks to reduce opponents hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content "P2: 50HP"
  end

end