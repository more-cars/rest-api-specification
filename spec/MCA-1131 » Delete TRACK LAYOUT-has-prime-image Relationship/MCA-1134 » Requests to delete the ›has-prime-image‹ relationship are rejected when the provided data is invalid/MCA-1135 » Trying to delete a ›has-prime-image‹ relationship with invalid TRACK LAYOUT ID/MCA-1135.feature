@REQ_MCA-1131
Feature: Delete TRACK LAYOUT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1134
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1135 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      And there exists a "IMAGE" "Hot Wheels Corvette"
      When the user deletes the "has prime image" relationship between "GP Circuit" and "Hot Wheels Corvette"
      Then the request should be rejected with status code 404
