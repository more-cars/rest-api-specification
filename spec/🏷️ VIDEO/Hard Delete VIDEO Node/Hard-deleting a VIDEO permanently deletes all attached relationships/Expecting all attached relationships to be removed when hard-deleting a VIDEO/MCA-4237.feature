@REQ_MCA-4231
Feature: Hard Delete VIDEO Node
  As an API contributor
  I want to be able to delete a VIDEO
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-4236
  Rule: Hard-deleting a VIDEO permanently deletes all attached relationships

    @TEST_MCA-4237 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a VIDEO
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "belongs to node" relationship "R1" for "P1 vs F40"
      And there exists a "is main video of node" relationship "R2" for "P1 vs F40"
      When the user hard-deletes the "VIDEO" "P1 vs F40"
      Then the "VIDEO" "P1 vs F40" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
