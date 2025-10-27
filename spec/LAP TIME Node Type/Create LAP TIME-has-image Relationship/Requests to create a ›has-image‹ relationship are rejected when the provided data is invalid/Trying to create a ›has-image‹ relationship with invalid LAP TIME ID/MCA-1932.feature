@REQ_MCA-1928
Feature: Create LAP TIME-has-image Relationship

  @RULE_MCA-1931
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1932
    Scenario: Trying to create a ›has-image‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      And there exists a "IMAGE" "track record"
      When the user creates a "has image" relationship between "fastest lap" and "track record"
      Then the request should be rejected with status code 404
