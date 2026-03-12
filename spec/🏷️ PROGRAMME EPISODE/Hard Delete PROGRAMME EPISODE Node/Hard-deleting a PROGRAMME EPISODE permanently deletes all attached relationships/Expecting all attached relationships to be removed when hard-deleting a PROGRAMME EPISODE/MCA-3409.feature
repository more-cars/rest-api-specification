@REQ_MCA-3403
Feature: Hard Delete PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to delete a PROGRAMME EPISODE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3408
  Rule: Hard-deleting a PROGRAMME EPISODE permanently deletes all attached relationships

    @TEST_MCA-3409 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "Top Gear"
      And there exists a "has image" relationship "R1" for "Top Gear"
      And there exists a "has prime image" relationship "R2" for "Top Gear"
      When the user hard-deletes the "PROGRAMME EPISODE" "Top Gear"
      Then the "PROGRAMME EPISODE" "Top Gear" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
