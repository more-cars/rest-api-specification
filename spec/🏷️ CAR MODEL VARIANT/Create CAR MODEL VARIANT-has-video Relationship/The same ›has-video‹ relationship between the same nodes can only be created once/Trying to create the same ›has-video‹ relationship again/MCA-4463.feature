@REQ_MCA-4455
Feature: Create CAR MODEL VARIANT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL VARIANT
  So an API consumer can illustrate the CAR MODEL VARIANT node in a frontend application

  @RULE_MCA-4462
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4463 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      When the user creates a "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the response should return with status code 304
