@REQ_MCA-2195
Feature: Delete CAR MODEL VARIANT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2202
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2203 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "test photo"
      And there exists NO "has prime image" relationship between "BMW M3" and "test photo"
      When the user deletes the "has prime image" relationship between "BMW M3" and "test photo"
      Then the request should be rejected with status code 404
