@REQ_MCA-4401
Feature: Create CAR MODEL-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL
  So an API consumer can illustrate the CAR MODEL node in a frontend application

  @RULE_MCA-4408
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4409 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Testarossa" and "Promo Video"
      When the user creates a "has-video" relationship between "Testarossa" and "Promo Video"
      Then the response should return with status code 304
