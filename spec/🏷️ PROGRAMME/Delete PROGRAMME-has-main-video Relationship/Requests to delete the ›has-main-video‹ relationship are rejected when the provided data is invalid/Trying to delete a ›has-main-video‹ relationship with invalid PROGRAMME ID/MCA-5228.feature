@REQ_MCA-5224
Feature: Delete PROGRAMME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a PROGRAMME
  So I can clean up bad data or test data

  @RULE_MCA-5227
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5228 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be rejected with status code 404
