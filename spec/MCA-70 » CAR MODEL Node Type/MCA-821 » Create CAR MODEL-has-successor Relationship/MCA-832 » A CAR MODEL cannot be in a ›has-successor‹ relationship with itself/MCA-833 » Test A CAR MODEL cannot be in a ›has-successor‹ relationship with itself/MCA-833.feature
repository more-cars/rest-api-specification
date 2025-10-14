@REQ_MCA-821
Feature: Create CAR MODEL-has-successor Relationship

  @RULE_MCA-832
  Rule: A CAR MODEL cannot be in a ›has-successor‹ relationship with itself

    @TEST_MCA-833
    Scenario: Test A CAR MODEL cannot be in a ›has-successor‹ relationship with itself
      Given there exists a "CAR MODEL" "Countach"
      When the user creates a "has successor" relationship between "Countach" and "Countach"
      Then the request should be rejected with status code 422
