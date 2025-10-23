@REQ_MCA-1238
Feature: Create RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1241
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1243 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SERIES" "DTM"
      And "IMAGE" "DTM logo" does NOT exist
      When the user creates a "has prime image" relationship between "DTM" and "DTM logo"
      Then the request should be rejected with status code 404
