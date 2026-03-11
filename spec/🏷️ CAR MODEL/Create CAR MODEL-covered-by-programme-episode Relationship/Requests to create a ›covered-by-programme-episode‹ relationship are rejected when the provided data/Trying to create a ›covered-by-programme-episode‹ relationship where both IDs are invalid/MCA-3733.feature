@REQ_MCA-3727
Feature: Create CAR MODEL-covered-by-programme-episode Relationship

  @RULE_MCA-3730
  Rule: Requests to create a ›covered-by-programme-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3733
    Scenario: Trying to create a ›covered-by-programme-episode‹ relationship where both IDs are invalid
      Given "CAR MODEL" "McLaren P1" does NOT exist
      And "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user creates a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the request should be rejected with status code 404
