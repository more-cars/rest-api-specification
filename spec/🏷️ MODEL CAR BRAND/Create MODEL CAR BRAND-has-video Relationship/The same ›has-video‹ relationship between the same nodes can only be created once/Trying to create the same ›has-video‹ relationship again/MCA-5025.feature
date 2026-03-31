@REQ_MCA-5017
Feature: Create MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR BRAND
  So an API consumer can illustrate the MODEL CAR BRAND node in a frontend application

  @RULE_MCA-5024
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5025
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Hot Wheels" and "Promo Video"
      When the user creates a "has-video" relationship between "Hot Wheels" and "Promo Video"
      Then the response should return with status code 304
