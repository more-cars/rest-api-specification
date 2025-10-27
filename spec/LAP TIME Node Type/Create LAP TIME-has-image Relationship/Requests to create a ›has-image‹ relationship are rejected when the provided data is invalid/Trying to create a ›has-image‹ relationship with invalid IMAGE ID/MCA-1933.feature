@REQ_MCA-1928
Feature: Create LAP TIME-has-image Relationship

  @RULE_MCA-1931
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1933
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "LAP TIME" "fastest lap"
      And "IMAGE" "track record" does NOT exist
      When the user creates a "has image" relationship between "fastest lap" and "track record"
      Then the request should be rejected with status code 404
