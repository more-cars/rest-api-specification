@REQ_MCA-3718
Feature: Delete CAR MODEL VARIANT-presented-at-motor-show Relationship
  As an API contributor
  I want to be able to disconnect MOTOR SHOWS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3725
  Rule: Requests to delete the ›presented-at-motor-show‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3726
    Scenario: Trying to delete a non-existent ›presented-at-motor-show‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exists a "MOTOR SHOW" "IAA Frankfurt 1999"
      And there exists NO "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt 1999"
      When the user deletes the "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt 1999"
      Then the request should be rejected with status code 404
