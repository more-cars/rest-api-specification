@REQ_MCA-1462
Feature: Delete RACING EVENT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1465
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1466 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      And there exists a "IMAGE" "DTM race"
      When the user deletes the "has prime image" relationship between "GP Monaco" and "DTM race"
      Then the request should be rejected with status code 404
