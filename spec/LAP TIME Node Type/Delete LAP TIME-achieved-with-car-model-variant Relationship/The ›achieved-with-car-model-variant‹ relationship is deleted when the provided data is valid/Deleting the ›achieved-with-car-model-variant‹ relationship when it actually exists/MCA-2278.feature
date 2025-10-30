@REQ_MCA-2276
Feature: Delete LAP TIME-achieved-with-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-2277
  Rule: The ›achieved-with-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2278 @implemented
    Scenario: Deleting the ›achieved-with-car-model-variant‹ relationship when it actually exists
      Given there exists a "LAP TIME" "test lap"
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6"
      And there exists a "achieved with car model variant" relationship "R" between "test lap" and "Opel Calibra V6"
      When the user deletes the "achieved with car model variant" relationship between "test lap" and "Opel Calibra V6"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
