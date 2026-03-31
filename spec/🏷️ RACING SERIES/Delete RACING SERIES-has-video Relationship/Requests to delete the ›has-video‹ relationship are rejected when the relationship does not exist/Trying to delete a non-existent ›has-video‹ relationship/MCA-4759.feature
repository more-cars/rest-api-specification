@REQ_MCA-4751
Feature: Delete RACING SERIES-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4758
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4759
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Formula 1" and "Promo Video"
      When the user deletes the "has-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
