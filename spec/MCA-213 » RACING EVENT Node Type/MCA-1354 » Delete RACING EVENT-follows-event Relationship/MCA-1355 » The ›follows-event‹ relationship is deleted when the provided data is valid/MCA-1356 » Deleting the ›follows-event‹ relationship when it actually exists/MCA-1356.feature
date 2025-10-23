@REQ_MCA-1354
Feature: Delete RACING EVENT-follows-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1355
  Rule: The ›follows-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1356 @implemented
    Scenario: Deleting the ›follows-event‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists a "follows event" relationship "R" between "GP Austria" and "DTM Norisring"
      When the user deletes the "follows event" relationship between "GP Austria" and "DTM Norisring"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
