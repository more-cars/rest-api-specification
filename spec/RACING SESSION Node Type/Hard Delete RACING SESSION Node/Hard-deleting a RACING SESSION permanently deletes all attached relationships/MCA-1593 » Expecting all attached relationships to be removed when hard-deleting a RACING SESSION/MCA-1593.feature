@REQ_MCA-1587
Feature: Hard Delete RACING SESSION Node
  As an API contributor
  I want to be able to delete a RACING SESSION
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1592
  Rule: Hard-deleting a RACING SESSION permanently deletes all attached relationships

    @TEST_MCA-1593
    Scenario: Expecting all attached relationships to be removed when hard-deleting a RACING SESSION
      Given there exists a "RACING SESSION" "Free Practice 4"
      And there exists a "has image" relationship "R1" for "Free Practice 4"
      And there exists a "has prime image" relationship "R2" for "Free Practice 4"
      When the user hard-deletes the "RACING SESSION" "Free Practice 4"
      Then the "RACING SESSION" "Free Practice 4" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
