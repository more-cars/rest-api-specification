@REQ_MCA-4778
Feature: Delete RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4781
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4782
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid RACING SERIES ID
      Given "RACING SERIES" "Formula 1" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
