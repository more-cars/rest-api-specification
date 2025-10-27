@REQ_MCA-1693
Feature: Delete RACING SESSION-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1700
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1701
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "BMW logo"
      And there exists NO "has prime image" relationship between "Grand Prix" and "BMW logo"
      When the user deletes the "has prime image" relationship between "Grand Prix" and "BMW logo"
      Then the request should be rejected with status code 404
