@REQ_MCA-3612
Feature: Hard Delete MOTOR SHOW Node
  As an API contributor
  I want to be able to delete a MOTOR SHOW
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3617
  Rule: Hard-deleting a MOTOR SHOW permanently deletes all attached relationships

    @TEST_MCA-3618
    Scenario: Expecting all attached relationships to be removed when hard-deleting a MOTOR SHOW
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "has image" relationship "R1" for "IAA Frankfurt"
      And there exists a "has prime image" relationship "R2" for "IAA Frankfurt"
      When the user hard-deletes the "MOTOR SHOW" "IAA Frankfurt"
      Then the "MOTOR SHOW" "IAA Frankfurt" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
