@REQ_MCA-1946
Feature: Delete LAP TIME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1953
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1954
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "BMW logo"
      And there exists NO "has image" relationship between "fastest lap" and "BMW logo"
      When the user deletes the "has image" relationship between "fastest lap" and "BMW logo"
      Then the request should be rejected with status code 404
