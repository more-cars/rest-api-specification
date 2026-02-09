@REQ_MCA-1702
Feature: Create RACING EVENT-has-racing-session Relationship

  @RULE_MCA-1709
  Rule: The same ›has-racing-session‹ relationship between the same nodes can only be created once

    @TEST_MCA-1710 @implemented
    Scenario: Trying to create the same ›has-racing-session‹ relationship again
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING SESSION" "Qualifying"
      And there exists a "has racing session" relationship between "GP Monaco" and "Qualifying"
      When the user creates a "has racing session" relationship between "GP Monaco" and "Qualifying"
      Then the response should return with status code 304
