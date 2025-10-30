@REQ_MCA-2123
Feature: Create CAR MODEL VARIANT-achieved-lap-time Relationship

  @RULE_MCA-2126
  Rule: Requests to create a ›achieved-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2128 @implemented
    Scenario: Trying to create a ›achieved-lap-time‹ relationship with invalid LAP TIME ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And "LAP TIME" "fastest lap" does NOT exist
      When the user creates a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap"
      Then the request should be rejected with status code 404
