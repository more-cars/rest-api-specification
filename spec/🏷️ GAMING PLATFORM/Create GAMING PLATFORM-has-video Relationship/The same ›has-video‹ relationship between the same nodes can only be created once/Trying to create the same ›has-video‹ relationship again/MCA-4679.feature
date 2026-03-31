@REQ_MCA-4671
Feature: Create GAMING PLATFORM-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a GAMING PLATFORM
  So an API consumer can illustrate the GAMING PLATFORM node in a frontend application

  @RULE_MCA-4678
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4679
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Xbox" and "Promo Video"
      When the user creates a "has-video" relationship between "Xbox" and "Promo Video"
      Then the response should return with status code 304
