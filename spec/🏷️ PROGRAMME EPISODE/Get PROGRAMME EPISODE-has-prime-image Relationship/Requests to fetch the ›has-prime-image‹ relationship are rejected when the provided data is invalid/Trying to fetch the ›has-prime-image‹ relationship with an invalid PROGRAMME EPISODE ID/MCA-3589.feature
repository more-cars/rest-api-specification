@REQ_MCA-3583
Feature: Get PROGRAMME EPISODE-has-prime-image Relationship

  @RULE_MCA-3588
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3589
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests the "has prime image" relationship for "The Holy Trinity"
      Then the request should be rejected with status code 404
