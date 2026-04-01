@REQ_MCA-4814
Feature: Create RACING EVENT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING EVENT
  So an API consumer can instantly load the VIDEO that best represents the RACING EVENT

  @RULE_MCA-4821
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4822 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
      When the user creates a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the response should return with status code 304
