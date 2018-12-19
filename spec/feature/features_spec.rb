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

  scenario 'User selects Campaign_2 from Campaign List page' do
    visit '/'
    find(:xpath, "//a[@href='/Campaign_2']").click
    expect(page).to have_title('Campaign_2')
    expect(page).to have_content('Ireland')
    expect(page).to have_content('Electrical')
    expect(page).to have_content('£200000')
    expect(page).to have_content('How much do you want to invest?')
    expect(page).to have_selector(:link_or_button, 'Invest')
  end

  scenario 'User invests £10000 into Campaign_3' do
    visit '/'
    find(:xpath, "//a[@href='/Campaign_3']").click
    fill_in 'amount', :with => '10000'
    find_button('Invest').click
  #   expect(page).to have_content('Congratulation! You have just invested £10000 in Campaign_3')
  #   expect(page).to have_selector(:link_or_button, '/')
  end
end
