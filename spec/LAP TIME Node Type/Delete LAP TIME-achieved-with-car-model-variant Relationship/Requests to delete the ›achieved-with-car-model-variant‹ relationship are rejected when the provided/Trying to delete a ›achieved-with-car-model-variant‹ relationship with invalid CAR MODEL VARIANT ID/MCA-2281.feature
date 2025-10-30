@REQ_MCA-2276
Feature: Delete LAP TIME-achieved-with-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-2279
  Rule: Requests to delete the ›achieved-with-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2281 @implemented
    Scenario: Trying to delete a ›achieved-with-car-model-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "LAP TIME" "test lap"
      And "CAR MODEL VARIANT" "Opel Calibra V6" does NOT exist
      When the user deletes the "achieved with car model variant" relationship between "test lap" and "Opel Calibra V6"
      Then the request should be rejected with status code 404
