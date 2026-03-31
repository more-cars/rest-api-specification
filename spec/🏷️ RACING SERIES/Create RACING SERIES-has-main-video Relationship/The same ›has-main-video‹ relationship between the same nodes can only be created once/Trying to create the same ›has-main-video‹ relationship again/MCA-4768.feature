@REQ_MCA-4760
Feature: Create RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING SERIES
  So an API consumer can instantly load the VIDEO that best represents the RACING SERIES

  @RULE_MCA-4767
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4768
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Formula 1" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then the response should return with status code 304
