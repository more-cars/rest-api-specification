@REQ_MCA-4581
Feature: Delete TRACK LAYOUT-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-4584
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4587 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be rejected with status code 404
