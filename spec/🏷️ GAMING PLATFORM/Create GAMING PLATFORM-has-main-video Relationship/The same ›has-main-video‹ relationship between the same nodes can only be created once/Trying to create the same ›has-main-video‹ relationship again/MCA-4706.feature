@REQ_MCA-4698
Feature: Create GAMING PLATFORM-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a GAMING PLATFORM
  So an API consumer can instantly load the VIDEO that best represents the GAMING PLATFORM

  @RULE_MCA-4705
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4706 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Xbox" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Xbox" and "Promo Video"
      Then the response should return with status code 304
