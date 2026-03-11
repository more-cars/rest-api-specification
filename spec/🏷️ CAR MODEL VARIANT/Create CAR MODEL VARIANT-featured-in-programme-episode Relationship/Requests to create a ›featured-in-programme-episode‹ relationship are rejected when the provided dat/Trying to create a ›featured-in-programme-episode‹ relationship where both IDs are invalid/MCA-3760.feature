@REQ_MCA-3754
Feature: Create CAR MODEL VARIANT-featured-in-programme-episode Relationship

  @RULE_MCA-3757
  Rule: Requests to create a ›featured-in-programme-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3760
    Scenario: Trying to create a ›featured-in-programme-episode‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "McLaren P1" does NOT exist
      And "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user creates a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the request should be rejected with status code 404
