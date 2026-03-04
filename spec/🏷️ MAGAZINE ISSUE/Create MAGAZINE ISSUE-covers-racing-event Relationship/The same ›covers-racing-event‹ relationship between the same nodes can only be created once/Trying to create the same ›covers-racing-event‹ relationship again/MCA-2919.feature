@REQ_MCA-2911
Feature: Create MAGAZINE ISSUE-covers-racing-event Relationship

  @RULE_MCA-2918
  Rule: The same ›covers-racing-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-2919
    Scenario: Trying to create the same ›covers-racing-event‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exists a "RACING EVENT" "F1 GP Australia 2026"
      And there exists a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026"
      When the user creates a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026"
      Then the response should return with status code 304
