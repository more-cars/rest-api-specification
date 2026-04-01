@REQ_MCA-4868
Feature: Create RACING SESSION-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING SESSION
  So an API consumer can instantly load the VIDEO that best represents the RACING SESSION

  @RULE_MCA-4875
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4876 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Qualifying" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Qualifying" and "Promo Video"
      Then the response should return with status code 304
