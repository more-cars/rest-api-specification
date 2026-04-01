@REQ_MCA-4886
Feature: Delete RACING SESSION-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING SESSION
  So I can clean up bad data or test data

  @RULE_MCA-4893
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4894 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Qualifying" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Qualifying" and "Promo Video"
      Then the request should be rejected with status code 404
