@REQ_MCA-897
Feature: Delete CAR MODEL-is-successor-of Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-904
  Rule: Requests to delete the ›is-successor-of‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-905 @implemented
    Scenario: Trying to delete a non-existent ›is-successor-of‹ relationship
      Given there exists a "CAR MODEL" "Golf IV"
      And there exists a "CAR MODEL" "Corsa C"
      And there exists NO "is successor of" relationship between "Golf IV" and "Corsa C"
      When the user deletes the "is successor of" relationship between "Golf IV" and "Corsa C"
      Then the request should be rejected with status code 404
