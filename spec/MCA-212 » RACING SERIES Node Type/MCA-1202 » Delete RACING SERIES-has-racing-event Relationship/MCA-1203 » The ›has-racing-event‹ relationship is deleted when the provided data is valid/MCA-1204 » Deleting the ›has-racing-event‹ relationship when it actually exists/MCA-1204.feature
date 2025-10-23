@REQ_MCA-1202
Feature: Delete RACING SERIES-has-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1203
  Rule: The ›has-racing-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1204 @implemented
    Scenario: Deleting the ›has-racing-event‹ relationship when it actually exists
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "RACING EVENT" "Thruxton Club Event"
      And there exists a "has racing event" relationship "R" between "Formula 1" and "Thruxton Club Event"
      When the user deletes the "has racing event" relationship between "Formula 1" and "Thruxton Club Event"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
