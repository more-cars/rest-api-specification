@REQ_MCA-3754
Feature: Create CAR MODEL VARIANT-featured-in-programme-episode Relationship

  @RULE_MCA-3757
  Rule: Requests to create a ›featured-in-programme-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3759 @implemented
    Scenario: Trying to create a ›featured-in-programme-episode‹ relationship with invalid PROGRAMME EPISODE ID
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user creates a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the request should be rejected with status code 404
