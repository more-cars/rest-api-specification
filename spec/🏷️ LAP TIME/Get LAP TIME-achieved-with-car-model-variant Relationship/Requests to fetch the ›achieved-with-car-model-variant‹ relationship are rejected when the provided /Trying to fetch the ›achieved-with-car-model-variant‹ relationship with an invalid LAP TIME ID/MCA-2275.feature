@REQ_MCA-2269
Feature: Get LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2274
  Rule: Requests to fetch the ›achieved-with-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2275 @implemented
    Scenario: Trying to fetch the ›achieved-with-car-model-variant‹ relationship with an invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      When the user requests the "achieved with car model variant" relationship for "fastest lap"
      Then the request should be rejected with status code 404
