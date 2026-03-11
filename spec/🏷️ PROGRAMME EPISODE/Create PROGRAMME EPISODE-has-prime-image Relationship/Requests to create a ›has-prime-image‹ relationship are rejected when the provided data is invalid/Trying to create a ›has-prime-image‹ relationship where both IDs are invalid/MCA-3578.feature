@REQ_MCA-3572
Feature: Create PROGRAMME EPISODE-has-prime-image Relationship

  @RULE_MCA-3575
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3578
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And "IMAGE" "TGT logo" does NOT exist
      When the user creates a "has prime image" relationship between "The Holy Trinity" and "TGT logo"
      Then the request should be rejected with status code 404
