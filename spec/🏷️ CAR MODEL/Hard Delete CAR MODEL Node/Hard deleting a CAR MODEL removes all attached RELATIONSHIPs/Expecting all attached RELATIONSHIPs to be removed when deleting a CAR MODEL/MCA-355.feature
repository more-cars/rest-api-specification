@REQ_MCA-92
Feature: Hard Delete CAR MODEL Node
  As an API contributor\
  I want to be able to delete a CAR MODEL\
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-346
  Rule: Hard deleting a CAR MODEL removes all attached RELATIONSHIPs

    @TEST_MCA-355 @implemented
    Scenario: Expecting all attached RELATIONSHIPs to be removed when deleting a CAR MODEL
      Given there exists a "CAR MODEL" "Avensis"
      And there exists a "has image" relationship "R1" for "Avensis"
      And there exists a "has prime image" relationship "R2" for "Avensis"
      When the user hard-deletes the "CAR MODEL" "Avensis"
      Then the "CAR MODEL" "Avensis" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
