@REQ_MCA-5071
Feature: Create MAGAZINE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE
  So an API consumer can illustrate the MAGAZINE node in a frontend application

  @RULE_MCA-5078
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5079
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Top Gear" and "Promo Video"
      When the user creates a "has-video" relationship between "Top Gear" and "Promo Video"
      Then the response should return with status code 304
