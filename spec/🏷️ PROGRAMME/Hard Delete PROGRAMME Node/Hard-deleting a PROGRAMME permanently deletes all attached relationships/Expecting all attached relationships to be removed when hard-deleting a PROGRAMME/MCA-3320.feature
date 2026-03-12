@REQ_MCA-3314
Feature: Hard Delete PROGRAMME Node
  As an API contributor
  I want to be able to delete a PROGRAMME
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3319
  Rule: Hard-deleting a PROGRAMME permanently deletes all attached relationships

    @TEST_MCA-3320 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a PROGRAMME
      Given there exists a "PROGRAMME" "Top Gear"
      And there exists a "has image" relationship "R1" for "Top Gear"
      And there exists a "has prime image" relationship "R2" for "Top Gear"
      When the user hard-deletes the "PROGRAMME" "Top Gear"
      Then the "PROGRAMME" "Top Gear" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
