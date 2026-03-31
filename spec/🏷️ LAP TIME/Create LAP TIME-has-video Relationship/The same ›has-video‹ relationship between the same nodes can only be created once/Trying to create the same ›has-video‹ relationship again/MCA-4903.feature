@REQ_MCA-4895
Feature: Create LAP TIME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a LAP TIME
  So an API consumer can illustrate the LAP TIME node in a frontend application

  @RULE_MCA-4902
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4903
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Fastest Lap" and "Promo Video"
      When the user creates a "has-video" relationship between "Fastest Lap" and "Promo Video"
      Then the response should return with status code 304
