@REQ_MCA-5098
Feature: Create MAGAZINE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MAGAZINE
  So an API consumer can instantly load the VIDEO that best represents the MAGAZINE

  @RULE_MCA-5105
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5106 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Top Gear" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Top Gear" and "Promo Video"
      Then the response should return with status code 304
