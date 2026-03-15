@REQ_MCA-3664
Feature: Delete MOTOR SHOW-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3671
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3672 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "Paris Motor Show logo"
      And there exists NO "has image" relationship between "IAA Frankfurt" and "Paris Motor Show logo"
      When the user deletes the "has image" relationship between "IAA Frankfurt" and "Paris Motor Show logo"
      Then the request should be rejected with status code 404
