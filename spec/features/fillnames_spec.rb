require_relative '../spec_helper'

feature "enter names" do
  scenario 'allows players to fill in their names and submit them' do
    sign_in_and_play
    expect(page).to have_content "P1 vs. P2"
  end
end
