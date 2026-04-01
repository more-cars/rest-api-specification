@REQ_MCA-4608
Feature: Delete TRACK LAYOUT-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a TRACK LAYOUT
  So I can clean up bad data or test data

  @RULE_MCA-4611
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4613 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be rejected with status code 404
