@REQ_MCA-4778
Feature: Delete RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-4781
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4783 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING SERIES" "Formula 1"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then the request should be rejected with status code 404
