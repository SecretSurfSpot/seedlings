## The Challenge
We would like you to implement a mini Seedrs. The mini Seedrs is a website which has 3 pages: a page where you list the campaigns available (similar to https://www.seedrs.com/invest​), a page where you can invest and a confirmation page. Below we go through each one of the sections that you’ll need to implement and its requirements.

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
- The page should consist of an input box (to input the investment amount), the replica of the campaign card (the same that you display on the list of the campaigns) and a “Invest” button.
- The input needs to be validated... So accept only valid inputs.
- Investments are made by guest users - no need to implement authentication.
- Assume infinite balance for guest users.
- Investments need to be stored in a database / storage.

### Confirmation Page
- The page should consist on a success message, the amount invested and a link to go back to the list of campaigns.

### Other / Notes
- The solution should be implemented in your language(s) / framework(s) of choice.
- You should seed your data with at least 20 campaigns.


### Bonus Points
- Your application displays correctly on mobile devices (responsiveness).
- Your “list of campaigns” page handles pagination.
- Whilst we are not counting for you to “style” the application completely, it should look good.
- Uses Docker - include a Dockerfile / docker-compose on your files and clear instructions on
how to run it in a local environment.
- Your solution should include a README file with step by step instructions.
