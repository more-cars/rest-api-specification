@REQ_MCA-4949
Feature: Create MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR
  So an API consumer can illustrate the MODEL CAR node in a frontend application

  @RULE_MCA-4956
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4957 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      When the user creates a "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the response should return with status code 304
