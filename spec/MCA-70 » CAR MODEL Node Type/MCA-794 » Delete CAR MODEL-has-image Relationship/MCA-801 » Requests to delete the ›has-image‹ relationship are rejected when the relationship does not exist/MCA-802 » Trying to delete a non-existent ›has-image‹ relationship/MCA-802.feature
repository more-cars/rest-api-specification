@REQ_MCA-794
Feature: Delete CAR MODEL-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-801
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-802 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "CAR MODEL" "Corvette"
      And there exists a "IMAGE" "C5 front"
      And there exists NO "has image" relationship between "Corvette" and "C5 front"
      When the user deletes the "has image" relationship between "Corvette" and "C5 front"
      Then the request should be rejected with status code 404
