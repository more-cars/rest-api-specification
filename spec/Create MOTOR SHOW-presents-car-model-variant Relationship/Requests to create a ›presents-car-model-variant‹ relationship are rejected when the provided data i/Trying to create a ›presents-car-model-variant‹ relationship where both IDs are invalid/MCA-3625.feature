@REQ_MCA-3619
Feature: Create MOTOR SHOW-presents-car-model-variant Relationship

  @RULE_MCA-3622
  Rule: Requests to create a ›presents-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3625
    Scenario: Trying to create a ›presents-car-model-variant‹ relationship where both IDs are invalid
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And "CAR MODEL VARIANT" "BMW M760Li" does NOT exist
      When the user creates a "presents car model variant" relationship between "IAA Frankfurt" and "BMW M760Li"
      Then the request should be rejected with status code 404
