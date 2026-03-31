@REQ_MCA-4913
Feature: Delete LAP TIME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-4920
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4921
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Fastest Lap" and "Promo Video"
      When the user deletes the "has-video" relationship between "Fastest Lap" and "Promo Video"
      Then the request should be rejected with status code 404
