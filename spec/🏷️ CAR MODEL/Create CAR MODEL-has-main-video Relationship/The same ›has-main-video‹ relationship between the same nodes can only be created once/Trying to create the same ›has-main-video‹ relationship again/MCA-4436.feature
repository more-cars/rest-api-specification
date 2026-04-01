@REQ_MCA-4428
Feature: Create CAR MODEL-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a CAR MODEL
  So an API consumer can instantly load the VIDEO that best represents the CAR MODEL

  @RULE_MCA-4435
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4436 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Testarossa" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Testarossa" and "Promo Video"
      Then the response should return with status code 304
