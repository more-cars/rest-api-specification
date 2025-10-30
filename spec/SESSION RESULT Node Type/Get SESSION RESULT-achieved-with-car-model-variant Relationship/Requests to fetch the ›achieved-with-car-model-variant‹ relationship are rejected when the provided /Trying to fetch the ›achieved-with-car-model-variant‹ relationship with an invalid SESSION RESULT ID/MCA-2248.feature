@REQ_MCA-2242
Feature: Get SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2247
  Rule: Requests to fetch the ›achieved-with-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2248 @implemented
    Scenario: Trying to fetch the ›achieved-with-car-model-variant‹ relationship with an invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      When the user requests the "achieved with car model variant" relationship for "1st place"
      Then the request should be rejected with status code 404
