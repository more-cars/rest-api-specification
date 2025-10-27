@REQ_MCA-1867
Feature: Hard Delete LAP TIME Node
  As an API contributor
  I want to be able to delete a LAP TIME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1872
  Rule: Hard-deleting a LAP TIME permanently deletes all attached relationships

    @TEST_MCA-1873
    Scenario: Expecting all attached relationships to be removed when hard-deleting a LAP TIME
      Given there exists a "LAP TIME" "test lap"
      And there exists a "has image" relationship "R1" for "test lap"
      And there exists a "has prime image" relationship "R2" for "test lap"
      When the user hard-deletes the "LAP TIME" "test lap"
      Then the "LAP TIME" "test lap" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
