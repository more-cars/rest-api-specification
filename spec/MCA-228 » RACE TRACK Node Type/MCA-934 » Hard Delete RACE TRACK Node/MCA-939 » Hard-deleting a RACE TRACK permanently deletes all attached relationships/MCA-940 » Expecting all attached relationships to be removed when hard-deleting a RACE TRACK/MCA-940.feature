@REQ_MCA-934
Feature: Hard Delete RACE TRACK Node
  As an API contributor
  I want to be able to delete a RACE TRACK
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-939
  Rule: Hard-deleting a RACE TRACK permanently deletes all attached relationships

    @TEST_MCA-940 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a RACE TRACK
      Given there exists a "RACE TRACK" "AVUS"
      And there exists a "has image" relationship "R1" for "AVUS"
      And there exists a "has prime image" relationship "R2" for "AVUS"
      When the user hard-deletes the "RACE TRACK" "AVUS"
      Then the "RACE TRACK" "AVUS" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
