@REQ_MCA-1471
Feature: Create RACE TRACK-hosted-racing-event Relationship

  @RULE_MCA-1474
  Rule: Requests to create a ›hosted-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1475 @implemented
    Scenario: Trying to create a ›hosted-racing-event‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Red Bull Ring" does NOT exist
      And there exists a "RACING EVENT" "GP Austria"
      When the user creates a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria"
      Then the request should be rejected with status code 404
