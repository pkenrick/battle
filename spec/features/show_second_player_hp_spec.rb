feature 'Shows opponent\'s HP' do
  scenario 'initiating battle' do
    sign_in_and_play
    expect(page).to have_content 'Enzo: 60HP'
  end
end