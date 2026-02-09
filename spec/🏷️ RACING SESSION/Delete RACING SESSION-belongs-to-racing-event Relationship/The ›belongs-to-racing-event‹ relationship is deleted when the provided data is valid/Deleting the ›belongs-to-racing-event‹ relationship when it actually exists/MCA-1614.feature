@REQ_MCA-1612
Feature: Delete RACING SESSION-belongs-to-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1613
  Rule: The ›belongs-to-racing-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1614 @implemented
    Scenario: Deleting the ›belongs-to-racing-event‹ relationship when it actually exists
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists a "belongs to racing event" relationship "R" between "Grand Prix" and "DTM Norisring"
      When the user deletes the "belongs to racing event" relationship between "Grand Prix" and "DTM Norisring"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
