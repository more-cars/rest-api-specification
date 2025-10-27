@REQ_MCA-821
Feature: Create CAR MODEL-has-successor Relationship

  @RULE_MCA-824
  Rule: Requests to create a ›has-successor‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-827 @implemented
    Scenario: Trying to create a ›has-successor‹ relationship where both IDs are invalid
      Given "CAR MODEL" "Countach" does NOT exist
      And "CAR MODEL" "Diablo" does NOT exist
      When the user creates a "has successor" relationship between "Countach" and "Diablo"
      Then the request should be rejected with status code 404
