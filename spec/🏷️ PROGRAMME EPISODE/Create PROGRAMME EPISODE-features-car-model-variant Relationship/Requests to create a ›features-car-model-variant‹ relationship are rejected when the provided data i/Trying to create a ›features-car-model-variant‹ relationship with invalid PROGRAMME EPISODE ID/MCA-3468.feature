@REQ_MCA-3464
Feature: Create PROGRAMME EPISODE-features-car-model-variant Relationship

  @RULE_MCA-3467
  Rule: Requests to create a ›features-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3468
    Scenario: Trying to create a ›features-car-model-variant‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And there exists a "CAR MODEL VARIANT" "Ferrari LaFerrari"
      When the user creates a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari"
      Then the request should be rejected with status code 404
