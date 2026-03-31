@REQ_MCA-4392
Feature: Delete COMPANY-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a COMPANY
  So I can clean up bad data or test data

  @RULE_MCA-4395
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4397
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "COMPANY" "BMW AG"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "BMW AG" and "Promo Video"
      Then the request should be rejected with status code 404
