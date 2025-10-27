@REQ_MCA-1756
Feature: Hard Delete SESSION RESULT Node
  As an API contributor
  I want to be able to delete a SESSION RESULT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1761
  Rule: Hard-deleting a SESSION RESULT permanently deletes all attached relationships

    @TEST_MCA-1762
    Scenario: Expecting all attached relationships to be removed when hard-deleting a SESSION RESULT
      Given there exists a "SESSION RESULT" "999th place"
      And there exists a "has image" relationship "R1" for "999th place"
      And there exists a "has prime image" relationship "R2" for "999th place"
      When the user hard-deletes the "SESSION RESULT" "999th place"
      Then the "SESSION RESULT" "999th place" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
