@REQ_MCA-2062
Feature: Hard Delete CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to delete a CAR MODEL VARIANT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2067
  Rule: Hard-deleting a CAR MODEL VARIANT permanently deletes all attached relationships

    @TEST_MCA-2068 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a CAR MODEL VARIANT
      Given there exists a "CAR MODEL VARIANT" "BMW M99"
      And there exists a "has image" relationship "R1" for "BMW M99"
      And there exists a "has prime image" relationship "R2" for "BMW M99"
      When the user hard-deletes the "CAR MODEL VARIANT" "BMW M99"
      Then the "CAR MODEL VARIANT" "BMW M99" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
