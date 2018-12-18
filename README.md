# Seedlings

A mini Seedrs clone.

## Requirements

Implement a mini Seedrs website with 3 pages:
1) List of Campaigns
2) Investment Page
3) Confirmation Page


### List of Campaigns
- Campaigns have the following properties
  - Campaign name
  - Campaign image (this can be a URL sourced by you)
  - Percentage raised
  - Target Amount
  - Sector
  - Country
- You should list the campaigns in any format you want... (list / grid, etc).
- On your implementation of card - please implement a progress bar to visualise the progress of
investments against each campaign.
- When you click on a campaign card you will go to a page where you can invest on that campaign.
- Assume all the campaigns have targets in GBP.

### Investment Page
- The page should consist of an input box (to input the investment amount), the replica of the campaign card (same you display on the list of the campaigns) and a “Invest” button.
- The input needs to be validated... So accept only valid inputs.
- Investments are made by guest users - no need to implement authentication.
- Assume infinite balance for guest users.
- Investments need to be stored a database / storage.

### Confirmation Page
- The page should consist on a success message, the amount invested and a link to go back to the list of campaigns.

### Other / Notes
- The solution should be implemented on your language(s) / framework(s) of choice.
- You should seed your data with at least 20 campaigns.


### Bonus Points
- Your application displays correctly on mobile devices (responsiveness).
- Your “list of campaigns” page handles pagination.
- Whilst we are not counting for you to “style” the application completely, should look good.
- Uses Docker - include a Dockerfile / docker-compose on your files and clear instructions on
how to run it in a local environment.
- Your solution should include a README file with step by step instructions.


### User Story 1
```
As an investor,
so that I can view companies looking for funding,
I'd like to see details of companies' funding campaigns
```

### User Story 2
```
As an investor,
so that I can invest in companies looking for funding,
I'd like to be able to submit the amount I want to invest in a given company
```

### User Story 3
```
As an investor,
so that I know my investment submission has been successful,
I'd like to see a message informing me my investment has been accepted
```

## Acceptance Criteria
...........

## Approach

Created with Ruby.......... and RSpec........ (testing framework), using BDD, TDD and OOP principles.

SimpleCov & Rubocop were also used to measure test coverage and ensure code quality.

## The Application  (seedlings)

The project can be found here: https://github.com/SecretSurfSpot/seedlings

### Installation
- Perquisites: Ruby 2.5.1 installed on your machine
- Clone the repo to your local machine
- Run `bundle install`

### Testing
To test the application:
...........

The above commands result in the output shown in the screenshot below:

![REPL screenshot](https://github.com/SecretSurfSpot/seedlings/blob/master/images/rspec_screenshot.png)

### Use
To use the application...........:



The above commands result in the output shown in the screenshot below:

![REPL screenshot](https://github.com/SecretSurfSpot/seedlings/blob/master/images/interaction_screenshot.png)

## Domain Model

The model below illustrates the high-level structure of the application.

xxx classes:

1. **XXX:** ...........


```


```

## Possible Improvements
...........