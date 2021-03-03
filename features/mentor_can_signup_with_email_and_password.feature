Feature: Mentor can signup with email and password
  
  Scenario: New visitor submits signup form
    Given Visitor is not a logged-in user
    And he is on the mentor signup page
    And he has not submitted before the signup form with his information
    When he submits the form with his information
    Then he should see a message saying he needs to confirm his email address.