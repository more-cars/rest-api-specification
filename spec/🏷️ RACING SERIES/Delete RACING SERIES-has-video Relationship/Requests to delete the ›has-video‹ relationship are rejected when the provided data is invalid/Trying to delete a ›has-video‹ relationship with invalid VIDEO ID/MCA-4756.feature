@REQ_MCA-4751
Feature: Delete RACING SERIES-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4754
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4756
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING SERIES" "Formula 1"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
