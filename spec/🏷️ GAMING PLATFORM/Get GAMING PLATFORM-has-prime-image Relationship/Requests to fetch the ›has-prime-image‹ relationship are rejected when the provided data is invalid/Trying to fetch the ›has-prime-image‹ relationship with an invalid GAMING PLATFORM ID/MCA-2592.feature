@REQ_MCA-2586
Feature: Get GAMING PLATFORM-has-prime-image Relationship

  @RULE_MCA-2591
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2592 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid GAMING PLATFORM ID
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user requests the "has prime image" relationship for "PlayStation 5"
      Then the request should be rejected with status code 404
