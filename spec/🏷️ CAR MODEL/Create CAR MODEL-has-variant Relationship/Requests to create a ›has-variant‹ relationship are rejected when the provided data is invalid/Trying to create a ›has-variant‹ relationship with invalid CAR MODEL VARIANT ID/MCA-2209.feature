@REQ_MCA-2204
Feature: Create CAR MODEL-has-variant Relationship

  @RULE_MCA-2207
  Rule: Requests to create a ›has-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2209 @implemented
    Scenario: Trying to create a ›has-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "CAR MODEL" "Golf"
      And "CAR MODEL VARIANT" "VW Golf GTI" does NOT exist
      When the user creates a "has variant" relationship between "Golf" and "VW Golf GTI"
      Then the request should be rejected with status code 404
