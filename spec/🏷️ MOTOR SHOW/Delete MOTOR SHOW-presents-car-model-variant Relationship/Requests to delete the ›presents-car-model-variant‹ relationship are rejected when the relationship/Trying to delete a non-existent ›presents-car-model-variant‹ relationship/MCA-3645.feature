@REQ_MCA-3637
Feature: Delete MOTOR SHOW-presents-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3644
  Rule: Requests to delete the ›presents-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3645 @implemented
    Scenario: Trying to delete a non-existent ›presents-car-model-variant‹ relationship
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      And there exists NO "presents car model variant" relationship between "IAA Frankfurt" and "Lada Samara"
      When the user deletes the "presents car model variant" relationship between "IAA Frankfurt" and "Lada Samara"
      Then the request should be rejected with status code 404
