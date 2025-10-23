@REQ_MCA-1202
Feature: Delete RACING SERIES-has-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1209
  Rule: Requests to delete the ›has-racing-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1210 @implemented
    Scenario: Trying to delete a non-existent ›has-racing-event‹ relationship
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "RACING EVENT" "Thruxton Club Event"
      And there exists NO "has racing event" relationship between "Formula 1" and "Thruxton Club Event"
      When the user deletes the "has racing event" relationship between "Formula 1" and "Thruxton Club Event"
      Then the request should be rejected with status code 404
