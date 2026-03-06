@REQ_MCA-3175
Feature: Delete RATING-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3182
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3183 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "race track map"
      And there exists NO "has image" relationship between "93 Percent" and "race track map"
      When the user deletes the "has image" relationship between "93 Percent" and "race track map"
      Then the request should be rejected with status code 404
