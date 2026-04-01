@REQ_MCA-4778
Feature: Delete RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4785
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4786 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Formula 1" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
