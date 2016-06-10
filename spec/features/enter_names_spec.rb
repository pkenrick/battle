feature 'Enter names' do
  scenario 'submitting the names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Harry'
  end
end
