@REQ_MCA-5332
Feature: Delete MOTOR SHOW-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MOTOR SHOW
  So I can clean up bad data or test data

  @RULE_MCA-5335
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5336
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be rejected with status code 404
