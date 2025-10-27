@REQ_MCA-1720
Feature: Delete RACING EVENT-has-racing-session Relationship
  As an API contributor
  I want to be able to disconnect RACING SESSIONS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1721
  Rule: The ›has-racing-session‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1722
    Scenario: Deleting the ›has-racing-session‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING SESSION" "DTM Training"
      And there exists a "has racing session" relationship "R" between "GP Monaco" and "DTM Training"
      When the user deletes the "has racing session" relationship between "GP Monaco" and "DTM Training"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
