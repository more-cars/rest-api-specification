@REQ_MCA-1955
Feature: Create LAP TIME-has-prime-image Relationship

  @RULE_MCA-1958
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1961 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "LAP TIME" "fastest lap" does NOT exist
      And "IMAGE" "track record" does NOT exist
      When the user creates a "has prime image" relationship between "fastest lap" and "track record"
      Then the request should be rejected with status code 404
