@REQ_MCA-2704
Feature: Delete MAGAZINE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2707
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2710 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "MAGAZINE" "Top Gear" does NOT exist
      And "IMAGE" "ComputerBild cover" does NOT exist
      When the user deletes the "has prime image" relationship between "Top Gear" and "ComputerBild cover"
      Then the request should be rejected with status code 404
