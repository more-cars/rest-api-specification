@REQ_MCA-1238
Feature: Create RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1241
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1242 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid RACING SERIES ID
      Given "RACING SERIES" "DTM" does NOT exist
      And there exists a "IMAGE" "DTM logo"
      When the user creates a "has prime image" relationship between "DTM" and "DTM logo"
      Then the request should be rejected with status code 404
