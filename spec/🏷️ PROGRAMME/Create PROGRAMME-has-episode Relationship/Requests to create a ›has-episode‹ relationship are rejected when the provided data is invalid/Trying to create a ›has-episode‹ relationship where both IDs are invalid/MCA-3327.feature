@REQ_MCA-3321
Feature: Create PROGRAMME-has-episode Relationship

  @RULE_MCA-3324
  Rule: Requests to create a ›has-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3327 @implemented
    Scenario: Trying to create a ›has-episode‹ relationship where both IDs are invalid
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user creates a "has episode" relationship between "The Grand Tour" and "The Holy Trinity"
      Then the request should be rejected with status code 404
