@REQ_MCA-5305
Feature: Delete MOTOR SHOW-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-5308
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5310 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be rejected with status code 404
