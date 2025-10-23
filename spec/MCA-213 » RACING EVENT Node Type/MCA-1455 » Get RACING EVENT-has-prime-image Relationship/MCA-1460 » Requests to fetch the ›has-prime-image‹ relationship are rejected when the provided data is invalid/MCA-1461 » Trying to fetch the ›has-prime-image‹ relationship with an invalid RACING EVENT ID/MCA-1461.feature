@REQ_MCA-1455
Feature: Get RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1460
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1461 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      When the user requests the "has prime image" relationship for "GP Monaco"
      Then the request should be rejected with status code 404
