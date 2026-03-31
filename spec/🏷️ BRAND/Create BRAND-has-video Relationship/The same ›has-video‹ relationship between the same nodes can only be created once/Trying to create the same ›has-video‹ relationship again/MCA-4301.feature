@REQ_MCA-4293
Feature: Create BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BRAND
  So an API consumer can illustrate the BRAND node in a frontend application

  @RULE_MCA-4300
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4301
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "BRAND" "BMW"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "BMW" and "Promo Video"
      When the user creates a "has-video" relationship between "BMW" and "Promo Video"
      Then the response should return with status code 304
