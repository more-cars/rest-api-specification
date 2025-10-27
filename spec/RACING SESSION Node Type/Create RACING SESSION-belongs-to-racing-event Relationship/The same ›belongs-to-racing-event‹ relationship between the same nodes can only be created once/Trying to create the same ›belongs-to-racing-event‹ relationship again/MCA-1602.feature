@REQ_MCA-1594
Feature: Create RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1601
  Rule: The same ›belongs-to-racing-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-1602
    Scenario: Trying to create the same ›belongs-to-racing-event‹ relationship again
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "RACING EVENT" "GP Monaco"
      And there exists a "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
      When the user creates a "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
      Then the response should return with status code 304
