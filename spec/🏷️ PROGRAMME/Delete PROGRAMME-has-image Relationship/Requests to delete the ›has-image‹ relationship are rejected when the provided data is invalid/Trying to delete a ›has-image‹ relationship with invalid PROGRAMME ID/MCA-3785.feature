@REQ_MCA-3781
Feature: Delete PROGRAMME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3784
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3785 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid PROGRAMME ID
      Given "PROGRAMME" "Top Gear" does NOT exist
      And there exists a "IMAGE" "Fifth Gear logo"
      When the user deletes the "has image" relationship between "Top Gear" and "Fifth Gear logo"
      Then the request should be rejected with status code 404
