feature 'Feature Tests' do

  scenario 'User navigates to the Campaign List page' do
    visit '/'
    expect(page).to have_title('Campaign List')
    expect(page).to have_content('Campaign_1')
    expect(page).to have_content('United Kingdom')
    expect(page).to have_content('Automotive')
    expect(page).to have_content('£1000000')
    expect(page).to have_content('Campaign_5')
    expect(page).to have_content('Campaign_20')
  end
end
