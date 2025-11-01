@REQ_MCA-2114
Feature: Delete CAR MODEL VARIANT-achieved-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2121
  Rule: Requests to delete the ›achieved-session-result‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2122 @implemented
    Scenario: Trying to delete a non-existent ›achieved-session-result‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "SESSION RESULT" "test result"
      And there exists NO "achieved session result" relationship between "BMW M3 GTR" and "test result"
      When the user deletes the "achieved session result" relationship between "BMW M3 GTR" and "test result"
      Then the request should be rejected with status code 404
