@REQ_MCA-3096
Feature: Hard Delete RATING Node
  As an API contributor
  I want to be able to delete a RATING
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3101
  Rule: Hard-deleting a RATING permanently deletes all attached relationships

    @TEST_MCA-3102 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a RATING
      Given there exists a "RATING" "93 Percent"
      And there exists a "has image" relationship "R1" for "93 Percent"
      And there exists a "has prime image" relationship "R2" for "93 Percent"
      When the user hard-deletes the "RATING" "93 Percent"
      Then the "RATING" "93 Percent" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
