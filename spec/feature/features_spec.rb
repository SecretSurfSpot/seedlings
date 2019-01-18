require 'pg'
require_relative '../../db/migrate/campaign_array'

feature 'Feature Tests' do
  include CampaignDetails
  scenario 'User navigates to the Campaign List page' do
    visit '/'
    expect(page).to have_title('Campaign List')
    number = 1
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
    campaign_2 = CampaignDetails::CAMPAIGN_ARRAY[1]
    find(:xpath, "//a[@href='/campaign/#{campaign_2[:name]}']").click
    expect(page).to have_title('Investment')
    expect(page).to have_css("img[src*='images/#{campaign_2[:image]}.jpeg']")
    expect(page).to have_css('.media-heading.name', text: "#{campaign_2[:name]}")
    expect(page).to have_css('.media-heading.country', text: "#{campaign_2[:country]}")
    expect(page).to have_css('.media-heading.sector', text: "#{campaign_2[:sector]}")
    expect(page).to have_css('.media-heading.target_amount', text: "#{campaign_2[:target_amount]}")
    expect(page).to have_css('.progress-bar-percentage', text: '% Funded')
    expect(page).to have_css('.invest', text: 'How much do you want to invest?')
    expect(page).to have_selector(:link_or_button, 'Invest')
  end

  scenario 'User invests £65000 into Campaign_3' do
    visit '/'
    campaign = CampaignDetails::CAMPAIGN_ARRAY[2]
    find(:xpath, "//a[@href='/campaign/#{campaign[:name]}']").click
    expect(page).to have_title('Investment')
    fill_in 'amount', with: 65_000
    find_button('Invest').click
    expect(page).to have_title('Confirmation')
    expect(page).to have_css('.media-heading.congratulations', text: "Congratulations! you have successfully invested £65000 in #{campaign[:name]}")
    expect(page).to have_selector(:css, 'a[href="/"]')
  end
end
