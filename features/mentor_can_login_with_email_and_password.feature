Feature: Mentor can login with email and password
  
  Scenario: Registered mentor
    Given mentor signed up
    But he has not confirmed his email yet
    When he logs in with his email and password
    Then he should see an error message
    And he should not be able to access any mentor restricted resources
  
  Scenario: Confirmed mentor
    Given mentor signed up
    And he has confirmed his email
    But he has not submitted his profile details
    When he logs in with his email and password
    Then he should see the profile details form
    And he should not be able to access any other mentor restricted resources

  Scenario: Inactive mentor
    Given mentor signed up
    And he has confirmed his email
    And he has submitted his profile details
    But he has not been approved by an Admin into the platform
    When he logs in with his email and password
    Then he should see an error message
    And he should not be able to access any mentor restricted resources
  
  Scenario: Active mentor
    Given mentor signed up
    And he has confirmed his email
    And he has submitted his profile details
    And he has been approved by an Admin into the platform
    When he logs in with his email and password
    Then he should see the mentor profile page with his info
    And he should be able to access any mentor restricted resources