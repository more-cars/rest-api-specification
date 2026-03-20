@REQ_MCA-3964
Feature: Hard Delete MODEL CAR BRAND Node
  As an API contributor
  I want to be able to delete a MODEL CAR BRAND
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3969
  Rule: Hard-deleting a MODEL CAR BRAND permanently deletes all attached relationships

    @TEST_MCA-3970 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a MODEL CAR BRAND
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "has image" relationship "R1" for "Hot Wheels"
      And there exists a "has prime image" relationship "R2" for "Hot Wheels"
      When the user hard-deletes the "MODEL CAR BRAND" "Hot Wheels"
      Then the "MODEL CAR BRAND" "Hot Wheels" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
