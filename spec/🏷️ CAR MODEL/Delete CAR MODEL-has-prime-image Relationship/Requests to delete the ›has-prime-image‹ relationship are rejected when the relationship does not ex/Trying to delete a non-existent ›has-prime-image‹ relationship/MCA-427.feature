@REQ_MCA-293
Feature: Delete CAR MODEL-has-prime-image Relationship
  As an API contributor\
  I want to be able to detach the prime IMAGE from a CAR MODEL\
  So I can clean up bad data or test data

  @RULE_MCA-407
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-427 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "CAR MODEL" "Mondeo"
      And there exists an "IMAGE" "front-left.jpg"
      And there exists NO "has prime image" relationship between "Mondeo" and "front-left.jpg"
      When the user deletes the "has prime image" relationship between "Mondeo" and "front-left.jpg"
      Then the request should be rejected with status code 404
