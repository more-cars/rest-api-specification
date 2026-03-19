@REQ_MCA-3839
Feature: Hard Delete MODEL CAR Node
  As an API contributor
  I want to be able to delete a MODEL CAR
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3844
  Rule: Hard-deleting a MODEL CAR permanently deletes all attached relationships

    @TEST_MCA-3845
    Scenario: Expecting all attached relationships to be removed when hard-deleting a MODEL CAR
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "has image" relationship "R1" for "F40 Matchbox"
      And there exists a "has prime image" relationship "R2" for "F40 Matchbox"
      When the user hard-deletes the "MODEL CAR" "F40 Matchbox"
      Then the "MODEL CAR" "F40 Matchbox" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
