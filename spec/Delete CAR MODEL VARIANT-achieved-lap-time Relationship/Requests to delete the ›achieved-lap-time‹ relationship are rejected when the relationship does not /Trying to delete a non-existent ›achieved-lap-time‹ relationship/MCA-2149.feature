@REQ_MCA-2141
Feature: Delete CAR MODEL VARIANT-achieved-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2148
  Rule: Requests to delete the ›achieved-lap-time‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2149 @implemented
    Scenario: Trying to delete a non-existent ›achieved-lap-time‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "LAP TIME" "test lap"
      And there exists NO "achieved lap time" relationship between "BMW M3 GTR" and "test lap"
      When the user deletes the "achieved lap time" relationship between "BMW M3 GTR" and "test lap"
      Then the request should be rejected with status code 404
