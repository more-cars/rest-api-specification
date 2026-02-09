@REQ_MCA-2321
Feature: Hard Delete RACING GAME Node
  As an API contributor
  I want to be able to delete a RACING GAME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2326
  Rule: Hard-deleting a RACING GAME permanently deletes all attached relationships

    @TEST_MCA-2327
    Scenario: Expecting all attached relationships to be removed when hard-deleting a RACING GAME
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "has image" relationship "R1" for "F1 2025"
      And there exists a "has prime image" relationship "R2" for "F1 2025"
      When the user hard-deletes the "RACING GAME" "F1 2025"
      Then the "RACING GAME" "F1 2025" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
