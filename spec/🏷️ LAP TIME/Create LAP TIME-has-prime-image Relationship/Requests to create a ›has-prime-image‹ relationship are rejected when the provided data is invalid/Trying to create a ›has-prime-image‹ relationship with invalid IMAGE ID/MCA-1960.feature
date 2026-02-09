@REQ_MCA-1955
Feature: Create LAP TIME-has-prime-image Relationship

  @RULE_MCA-1958
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1960 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "LAP TIME" "fastest lap"
      And "IMAGE" "track record" does NOT exist
      When the user creates a "has prime image" relationship between "fastest lap" and "track record"
      Then the request should be rejected with status code 404
