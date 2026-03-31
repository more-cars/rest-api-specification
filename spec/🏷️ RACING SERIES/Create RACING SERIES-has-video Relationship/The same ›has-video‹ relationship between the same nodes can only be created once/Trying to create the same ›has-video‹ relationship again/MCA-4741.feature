@REQ_MCA-4733
Feature: Create RACING SERIES-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING SERIES
  So an API consumer can illustrate the RACING SERIES node in a frontend application

  @RULE_MCA-4740
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4741
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Formula 1" and "Promo Video"
      When the user creates a "has-video" relationship between "Formula 1" and "Promo Video"
      Then the response should return with status code 304
