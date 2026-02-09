@REQ_MCA-964
Feature: Hard Delete TRACK LAYOUT Node
  As an API contributor
  I want to be able to delete a TRACK LAYOUT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-969
  Rule: Hard-deleting a TRACK LAYOUT permanently deletes all attached relationships

    @TEST_MCA-970 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a TRACK LAYOUT
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "has image" relationship "R1" for "GP Circuit"
      And there exists a "has prime image" relationship "R2" for "GP Circuit"
      When the user hard-deletes the "TRACK LAYOUT" "GP Circuit"
      Then the "TRACK LAYOUT" "GP Circuit" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
