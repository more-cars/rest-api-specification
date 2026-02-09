@REQ_MCA-1249
Feature: Get RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1254
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1255 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid RACING SERIES ID
      Given "RACING SERIES" "BTCC" does NOT exist
      When the user requests the "has prime image" relationship for "BTCC"
      Then the request should be rejected with status code 404
