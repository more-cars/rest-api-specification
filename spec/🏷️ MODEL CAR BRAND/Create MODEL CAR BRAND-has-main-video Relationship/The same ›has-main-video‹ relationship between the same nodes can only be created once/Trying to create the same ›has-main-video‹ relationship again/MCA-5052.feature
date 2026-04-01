@REQ_MCA-5044
Feature: Create MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR BRAND
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5051
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5052 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the response should return with status code 304
