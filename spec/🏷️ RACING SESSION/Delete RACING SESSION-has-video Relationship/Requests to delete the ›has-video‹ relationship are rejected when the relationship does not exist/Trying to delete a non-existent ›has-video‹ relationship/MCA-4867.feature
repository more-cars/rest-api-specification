@REQ_MCA-4859
Feature: Delete RACING SESSION-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-4866
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4867
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Qualifying" and "Promo Video"
      When the user deletes the "has-video" relationship between "Qualifying" and "Promo Video"
      Then the request should be rejected with status code 404
