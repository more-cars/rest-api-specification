@REQ_MCA-4976
Feature: Create MODEL CAR-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR

  @RULE_MCA-4983
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4984
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the response should return with status code 304
