@REQ_MCA-1666
Feature: Delete RACING SESSION-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1673
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1674
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "qualifying photo"
      And there exists NO "has image" relationship between "Grand Prix" and "qualifying photo"
      When the user deletes the "has image" relationship between "Grand Prix" and "qualifying photo"
      Then the request should be rejected with status code 404
