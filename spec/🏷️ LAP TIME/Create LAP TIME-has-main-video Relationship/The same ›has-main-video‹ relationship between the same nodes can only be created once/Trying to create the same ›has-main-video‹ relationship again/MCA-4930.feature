@REQ_MCA-4922
Feature: Create LAP TIME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a LAP TIME
  So an API consumer can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4929
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4930
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      Then the response should return with status code 304
