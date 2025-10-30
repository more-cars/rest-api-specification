@REQ_MCA-2249
Feature: Delete SESSION RESULT-achieved-with-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-2256
  Rule: Requests to delete the ›achieved-with-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2257 @implemented
    Scenario: Trying to delete a non-existent ›achieved-with-car-model-variant‹ relationship
      Given there exists a "SESSION RESULT" "test result"
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P"
      And there exists NO "achieved with car model variant" relationship between "test result" and "Ferrari 499P"
      When the user deletes the "achieved with car model variant" relationship between "test result" and "Ferrari 499P"
      Then the request should be rejected with status code 404
