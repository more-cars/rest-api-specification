@REQ_MCA-2857
Feature: Create MAGAZINE ISSUE-presents-car-model-variant Relationship

  @RULE_MCA-2860
  Rule: Requests to create a ›presents-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2862
    Scenario: Trying to create a ›presents-car-model-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      When the user creates a "presents car model variant" relationship between "Best Supercars 2025" and "McLaren 750S"
      Then the request should be rejected with status code 404
