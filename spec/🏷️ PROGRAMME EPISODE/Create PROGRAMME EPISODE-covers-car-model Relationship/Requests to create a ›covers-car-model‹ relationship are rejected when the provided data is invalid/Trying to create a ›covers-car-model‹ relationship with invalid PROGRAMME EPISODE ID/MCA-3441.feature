@REQ_MCA-3437
Feature: Create PROGRAMME EPISODE-covers-car-model Relationship

  @RULE_MCA-3440
  Rule: Requests to create a ›covers-car-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3441
    Scenario: Trying to create a ›covers-car-model‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And there exists a "CAR MODEL" "LaFerrari"
      When the user creates a "covers car model" relationship between "The Holy Trinity" and "LaFerrari"
      Then the request should be rejected with status code 404
