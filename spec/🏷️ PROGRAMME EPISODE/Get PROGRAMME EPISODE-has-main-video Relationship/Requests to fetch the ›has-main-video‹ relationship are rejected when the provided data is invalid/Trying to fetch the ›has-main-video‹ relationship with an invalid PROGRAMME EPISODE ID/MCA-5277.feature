@REQ_MCA-5271
Feature: Get PROGRAMME EPISODE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a PROGRAMME EPISODE
  So I can instantly load the VIDEO that best represents the PROGRAMME EPISODE

  @RULE_MCA-5276
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5277 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests the "has-main-video" relationship for "The Holy Trinity"
      Then the request should be rejected with status code 404
