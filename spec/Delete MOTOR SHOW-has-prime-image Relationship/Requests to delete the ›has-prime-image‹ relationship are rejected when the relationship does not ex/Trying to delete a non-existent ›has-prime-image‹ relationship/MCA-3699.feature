@REQ_MCA-3691
Feature: Delete MOTOR SHOW-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3698
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3699
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "CES logo"
      And there exists NO "has prime image" relationship between "IAA Frankfurt" and "CES logo"
      When the user deletes the "has prime image" relationship between "IAA Frankfurt" and "CES logo"
      Then the request should be rejected with status code 404
