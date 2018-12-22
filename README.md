# Seedlings

Seedlings is a mini Seedrs clone application.

## Requirements

Click the [Challenge Specification](./seedlings_challenge_specs.md) to see the full requirements/specifications.

From the above specifications, a high level set of requirements and 3 users stories have been derived, as below:

Implement a mini Seedrs website with 3 pages:
1) List of Campaigns
2) Investment Page
3) Confirmation Page

### User Story 1
```
As an investor,
so that I can view companies looking for funding,
I'd like to see details of companies' funding campaigns.
```

### User Story 2
```
As an investor,
so that I can invest in companies looking for funding,
I'd like to be able to submit the amount I want to invest in a given company.
```

### User Story 3
```
As an investor,
so that I know my investment submission has been successful,
I'd like to see a message informing me my investment has been accepted.
```

## Approach

Created using PostgreSQL, Ruby & Sinatra, with RSpec & Capybara (testing frameworks), using BDD, TDD and OOP principles.

SimpleCov & Rubocop were also used to measure test coverage and ensure code quality.

## The Application

The project can be found here: https://github.com/SecretSurfSpot/seedlings

### Installation
- Perquisites: Ruby 2.5.1 and PostgreSQL 10.5 installed on your machine
- Clone the repo to your local machine
- Run `bundle install`

### Database Setup

Follow the instructions in the linked document below:

- [Database Setup](./database_setup.md)

### Testing
To test the application:

- Open Terminal (or a similar command line interface)
- Run `rspec` from the project root

The above commands result in the output shown in the screenshot below:

![REPL screenshot](https://github.com/SecretSurfSpot/seedlings/blob/master/images/rspec_screenshot.png)

### Use
To use the application:

- Open Terminal (or a similar command line interface)
- Run `rackup` from the project root
- Open Google Chrome and navigate to: `localhost:9292`

The above commands will take you to the 'Campaign List' page, as shown in the screenshot below:

![Campaign List screenshot](https://github.com/SecretSurfSpot/seedlings/blob/master/images/campaign_list_screenshot.png)


- On the Campaign List page, to invest in a campaign, click one of the campaign cards

This will take you to the 'Investment' page, as shown in the screenshot below:

![Investment screenshot](https://github.com/SecretSurfSpot/seedlings/blob/master/images/investment_screenshot.png)


- On the Investment page, enter the amount you'd like to invest, then click the 'Invest' button.

This will take you to the 'Confirmation' page, as shown in the screenshot below:

![Confirmation screenshot](https://github.com/SecretSurfSpot/seedlings/blob/master/images/confirmation_screenshot.png)


Clicking on the 'Back to all campaigns' link, takes you back to the 'Campaign List' page.

## Appendix - Documentation

- [CRC Cards](./crc_cards.md)
- [Domain model](./domain_model.md)  


## Possible Improvements
Given more time, I would like to include to following:
- Generally improve the appearance/formatting of the 'campaigns':
  - adding a 'card' for each campaign
  - implementing a 'grid' like appearance
  - adding pagination to the Campaign List page
- Modularise the common content of the campaign_list.erb and campaign.erb files
- Although all tests provide 100% code coverage, testing could be improved to include edge cases/incorrect output verification
- Integrate an ORM (Object-Relational Mapping), such as ActiveRecord or DataMapper
- The application has been developed to run on Google Chrome, I'd to modify it so it works correctly on all popular browsers
