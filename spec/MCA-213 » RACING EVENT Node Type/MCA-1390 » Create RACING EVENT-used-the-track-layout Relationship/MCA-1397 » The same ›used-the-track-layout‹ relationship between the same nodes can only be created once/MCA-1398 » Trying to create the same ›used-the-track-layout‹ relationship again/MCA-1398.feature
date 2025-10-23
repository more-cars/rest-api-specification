@REQ_MCA-1390
Feature: Create RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1397
  Rule: The same ›used-the-track-layout‹ relationship between the same nodes can only be created once

    @TEST_MCA-1398 @implemented
    Scenario: Trying to create the same ›used-the-track-layout‹ relationship again
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exists a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
      When the user creates a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
      Then the response should return with status code 304
