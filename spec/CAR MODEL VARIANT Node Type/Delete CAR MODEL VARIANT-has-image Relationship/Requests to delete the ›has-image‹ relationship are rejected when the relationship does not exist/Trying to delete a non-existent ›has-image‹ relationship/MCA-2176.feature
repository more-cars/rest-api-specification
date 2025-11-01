@REQ_MCA-2168
Feature: Delete CAR MODEL VARIANT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2175
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2176 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "Toyota logo"
      And there exists NO "has image" relationship between "BMW M3" and "Toyota logo"
      When the user deletes the "has image" relationship between "BMW M3" and "Toyota logo"
      Then the request should be rejected with status code 404
