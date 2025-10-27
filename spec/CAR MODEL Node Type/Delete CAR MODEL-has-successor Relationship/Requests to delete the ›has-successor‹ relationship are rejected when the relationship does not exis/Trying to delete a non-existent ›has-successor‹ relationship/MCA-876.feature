@REQ_MCA-868
Feature: Delete CAR MODEL-has-successor Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-875
  Rule: Requests to delete the ›has-successor‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-876 @implemented
    Scenario: Trying to delete a non-existent ›has-successor‹ relationship
      Given there exists a "CAR MODEL" "Colt"
      And there exists a "CAR MODEL" "Impreza"
      And there exists NO "has successor" relationship between "Colt" and "Impreza"
      When the user deletes the "has successor" relationship between "Colt" and "Impreza"
      Then the request should be rejected with status code 404
