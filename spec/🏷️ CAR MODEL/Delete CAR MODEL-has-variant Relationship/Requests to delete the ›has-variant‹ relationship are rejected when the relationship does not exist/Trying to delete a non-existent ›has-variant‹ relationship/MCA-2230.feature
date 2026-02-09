@REQ_MCA-2222
Feature: Delete CAR MODEL-has-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-2229
  Rule: Requests to delete the ›has-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2230 @implemented
    Scenario: Trying to delete a non-existent ›has-variant‹ relationship
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "CAR MODEL VARIANT" "Renault Twingo 1.2"
      And there exists NO "has variant" relationship between "Golf" and "Renault Twingo 1.2"
      When the user deletes the "has variant" relationship between "Golf" and "Renault Twingo 1.2"
      Then the request should be rejected with status code 404
