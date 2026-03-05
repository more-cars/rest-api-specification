@REQ_MCA-2884
Feature: Create MAGAZINE ISSUE-covers-car-model Relationship

  @RULE_MCA-2887
  Rule: Requests to create a ›covers-car-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2890 @implemented
    Scenario: Trying to create a ›covers-car-model‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "50 Jahre GTI" does NOT exist
      And "CAR MODEL" "Golf" does NOT exist
      When the user creates a "covers car model" relationship between "50 Jahre GTI" and "Golf"
      Then the request should be rejected with status code 404
