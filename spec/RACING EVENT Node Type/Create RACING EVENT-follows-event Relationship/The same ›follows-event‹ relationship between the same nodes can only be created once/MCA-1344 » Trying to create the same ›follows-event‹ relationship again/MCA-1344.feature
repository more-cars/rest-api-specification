@REQ_MCA-1336
Feature: Create RACING EVENT-follows-event Relationship

  @RULE_MCA-1343
  Rule: The same ›follows-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-1344 @implemented
    Scenario: Trying to create the same ›follows-event‹ relationship again
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "GP Monaco"
      And there exists a "follows event" relationship between "GP Austria" and "GP Monaco"
      When the user creates a "follows event" relationship between "GP Austria" and "GP Monaco"
      Then the response should return with status code 304
