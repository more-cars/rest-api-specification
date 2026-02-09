@REQ_MCA-1327
Feature: Delete RACING EVENT-is-followed-by-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1328
  Rule: The ›is-followed-by-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1329 @implemented
    Scenario: Deleting the ›is-followed-by-event‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists a "is followed by event" relationship "R" between "GP Monaco" and "DTM Norisring"
      When the user deletes the "is followed by event" relationship between "GP Monaco" and "DTM Norisring"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
