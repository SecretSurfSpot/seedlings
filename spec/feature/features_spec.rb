require 'pg'
require_relative '../../db/migrate/campaign_array'

feature 'Feature Tests' do
  scenario 'User navigates to the Campaign List page' do
    visit '/'
    expect(page).to have_title('Campaign List')
    number = 1
    include CampaignDetails
      CampaignDetails::CAMPAIGN_ARRAY.each do |campaign|
        within "li#campaign_#{number}" do
          expect(page).to have_css("img[src*='images/#{campaign[:image]}.jpeg']")
          expect(page).to have_css('.media-heading.name', text: "#{campaign[:name]}")
          expect(page).to have_css('.media-heading.country', text: "#{campaign[:country]}")
          expect(page).to have_css('.media-heading.sector', text: "#{campaign[:sector]}")
          expect(page).to have_css('.media-heading.target_amount', text: "#{campaign[:target_amount]}")
          expect(page).to have_css('.progress-bar-percentage', text: '% Funded')
        end
        number +=1
      end
  end

  scenario 'User selects Campaign_2 from Campaign List page' do
    visit '/'
    find(:xpath, "//a[@href='/campaign/Campaign_2']").click
    expect(page).to have_title('Investment')
    expect(page).to have_content('Ireland')
    expect(page).to have_content('Electrical')
    expect(page).to have_content('£200000')
    expect(page).to have_content('% Funded')
    expect(page).to have_content('How much do you want to invest?')
    expect(page).to have_selector(:link_or_button, 'Invest')
  end

  scenario 'User invests £65000 into Campaign_3' do
    visit '/'
    find(:xpath, "//a[@href='/campaign/Campaign_3']").click
    fill_in 'amount', with: 65_000
    find_button('Invest').click
    expect(page).to have_title('Confirmation')
    expect(page).to have_content('Congratulations! you have successfully invested £65000 in Campaign_3')
    expect(page).to have_selector(:css, 'a[href="/"]')
  end
end
