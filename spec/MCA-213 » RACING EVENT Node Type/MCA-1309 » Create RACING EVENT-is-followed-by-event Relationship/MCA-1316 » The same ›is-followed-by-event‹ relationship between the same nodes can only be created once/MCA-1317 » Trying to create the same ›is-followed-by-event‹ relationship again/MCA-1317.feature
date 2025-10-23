@REQ_MCA-1309
Feature: Create RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1316
  Rule: The same ›is-followed-by-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-1317 @implemented
    Scenario: Trying to create the same ›is-followed-by-event‹ relationship again
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "GP Austria"
      And there exists a "is followed by event" relationship between "GP Monaco" and "GP Austria"
      When the user creates a "is followed by event" relationship between "GP Monaco" and "GP Austria"
      Then the response should return with status code 304
