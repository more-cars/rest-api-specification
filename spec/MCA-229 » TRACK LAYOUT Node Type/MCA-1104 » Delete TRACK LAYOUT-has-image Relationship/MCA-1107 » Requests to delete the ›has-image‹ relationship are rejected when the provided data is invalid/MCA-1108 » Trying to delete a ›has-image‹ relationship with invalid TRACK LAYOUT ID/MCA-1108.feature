@REQ_MCA-1104
Feature: Delete TRACK LAYOUT-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1107
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1108 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      And there exists a "IMAGE" "BMW logo"
      When the user deletes the "has image" relationship between "GP Circuit" and "BMW logo"
      Then the request should be rejected with status code 404
