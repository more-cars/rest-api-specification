@REQ_MCA-971
Feature: Create RACE TRACK-has-layout Relationship

  @RULE_MCA-978
  Rule: The same ›has-layout‹ relationship between the same nodes can only be created once

    @TEST_MCA-979 @implemented
    Scenario: Trying to create the same ›has-layout‹ relationship again
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      When the user creates a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the response should return with status code 304
