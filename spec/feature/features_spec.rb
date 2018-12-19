feature 'Feature Tests' do

  scenario 'User navigates to the Campaign List page' do
    visit ('/')
    expect(page).to have_title('Campaign List')
    expect(page).to have_content('Campaign_1')
    expect(page).to have_content('Campaign_2')
    expect(page).to have_content('Campaign_3')
    expect(page).to have_content('Campaign_4')
    expect(page).to have_content('Campaign_5')
    expect(page).to have_content('Campaign_20')
  end

end
