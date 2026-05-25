@REQ_MCA-5946
Feature: Hard Delete BOOK Node
  As an API contributor
  I want to be able to delete a BOOK
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-5951
  Rule: Hard-deleting a BOOK permanently deletes all attached relationships

    @TEST_MCA-5952 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "has image" relationship "R1" for "F1 in Numbers"
      And there exists a "has prime image" relationship "R2" for "F1 in Numbers"
      When the user hard-deletes the "BOOK" "F1 in Numbers"
      Then the "BOOK" "F1 in Numbers" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
