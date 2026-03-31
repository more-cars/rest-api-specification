@REQ_MCA-5217
Feature: Get PROGRAMME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a PROGRAMME
  So I can instantly load the VIDEO that best represents the PROGRAMME

  @RULE_MCA-5222
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5223
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      When the user requests the "has-main-video" relationship for "The Grand Tour"
      Then the request should be rejected with status code 404
