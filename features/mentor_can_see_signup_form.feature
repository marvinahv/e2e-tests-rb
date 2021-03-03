Feature: Mentor can see signup form
  
  Scenario: Visitor goes to signup page
    Given Visitor is not a logged-in user
    When he goes to the signup page
    Then he should see the signup form