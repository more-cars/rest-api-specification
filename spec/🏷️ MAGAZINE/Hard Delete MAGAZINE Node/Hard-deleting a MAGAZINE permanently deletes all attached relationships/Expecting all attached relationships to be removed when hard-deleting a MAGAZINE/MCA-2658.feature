@REQ_MCA-2652
Feature: Hard Delete MAGAZINE Node
  As an API contributor
  I want to be able to delete a MAGAZINE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2657
  Rule: Hard-deleting a MAGAZINE permanently deletes all attached relationships

    @TEST_MCA-2658
    Scenario: Expecting all attached relationships to be removed when hard-deleting a MAGAZINE
      Given there exists a "MAGAZINE" "ComputerBild"
      And there exists a "has image" relationship "R1" for "ComputerBild"
      And there exists a "has prime image" relationship "R2" for "ComputerBild"
      When the user hard-deletes the "MAGAZINE" "ComputerBild"
      Then the "MAGAZINE" "ComputerBild" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
