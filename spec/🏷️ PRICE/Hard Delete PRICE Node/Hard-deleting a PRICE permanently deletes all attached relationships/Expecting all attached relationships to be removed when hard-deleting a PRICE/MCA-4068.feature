@REQ_MCA-4062
Feature: Hard Delete PRICE Node
  As an API contributor
  I want to be able to delete a PRICE
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-4067
  Rule: Hard-deleting a PRICE permanently deletes all attached relationships

    @TEST_MCA-4068
    Scenario: Expecting all attached relationships to be removed when hard-deleting a PRICE
      Given there exists a "PRICE" "Test Price"
      And there exists a "has image" relationship "R1" for "Test Price"
      And there exists a "has prime image" relationship "R2" for "Test Price"
      When the user hard-deletes the "PRICE" "Test Price"
      Then the "PRICE" "Test Price" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
