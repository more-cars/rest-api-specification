@REQ_MCA-1471
Feature: Create RACE TRACK-hosted-racing-event Relationship

  @RULE_MCA-1478
  Rule: The same ›hosted-racing-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-1479 @implemented
    Scenario: Trying to create the same ›hosted-racing-event‹ relationship again
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "RACING EVENT" "GP Austria"
      And there exists a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria"
      When the user creates a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria"
      Then the response should return with status code 304
