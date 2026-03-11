@REQ_MCA-3700
Feature: Create CAR MODEL VARIANT-presented-at-motor-show Relationship

  @RULE_MCA-3703
  Rule: Requests to create a ›presented-at-motor-show‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3704
    Scenario: Trying to create a ›presented-at-motor-show‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW i8" does NOT exist
      And there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user creates a "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt"
      Then the request should be rejected with status code 404
