@REQ_MCA-2276
Feature: Delete LAP TIME-achieved-with-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-2283
  Rule: Requests to delete the ›achieved-with-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2284 @implemented
    Scenario: Trying to delete a non-existent ›achieved-with-car-model-variant‹ relationship
      Given there exists a "LAP TIME" "test lap"
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6"
      And there exists NO "achieved with car model variant" relationship between "test lap" and "Opel Calibra V6"
      When the user deletes the "achieved with car model variant" relationship between "test lap" and "Opel Calibra V6"
      Then the request should be rejected with status code 404
