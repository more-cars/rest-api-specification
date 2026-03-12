@REQ_MCA-3384
Feature: Delete PROGRAMME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3387
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3388 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And there exists a "IMAGE" "Top Gear logo"
      When the user deletes the "has prime image" relationship between "The Grand Tour" and "Top Gear logo"
      Then the request should be rejected with status code 404
