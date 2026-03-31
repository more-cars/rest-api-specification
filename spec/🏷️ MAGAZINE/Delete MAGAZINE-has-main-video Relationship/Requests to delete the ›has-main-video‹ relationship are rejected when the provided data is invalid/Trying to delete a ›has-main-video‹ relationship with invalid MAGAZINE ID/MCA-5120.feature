@REQ_MCA-5116
Feature: Delete MAGAZINE-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MAGAZINE
  So I can clean up bad data or test data

  @RULE_MCA-5119
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5120
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Top Gear" and "Promo Video"
      Then the request should be rejected with status code 404
