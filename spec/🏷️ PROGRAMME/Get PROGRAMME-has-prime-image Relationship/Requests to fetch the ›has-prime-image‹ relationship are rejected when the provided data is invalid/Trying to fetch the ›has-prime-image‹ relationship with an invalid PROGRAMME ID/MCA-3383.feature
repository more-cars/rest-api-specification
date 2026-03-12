@REQ_MCA-3377
Feature: Get PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3382
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3383 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      When the user requests the "has prime image" relationship for "The Grand Tour"
      Then the request should be rejected with status code 404
