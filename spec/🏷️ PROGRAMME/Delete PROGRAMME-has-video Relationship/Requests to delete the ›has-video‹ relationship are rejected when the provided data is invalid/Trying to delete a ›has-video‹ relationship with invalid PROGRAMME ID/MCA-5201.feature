@REQ_MCA-5197
Feature: Delete PROGRAMME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-5200
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5201 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be rejected with status code 404
