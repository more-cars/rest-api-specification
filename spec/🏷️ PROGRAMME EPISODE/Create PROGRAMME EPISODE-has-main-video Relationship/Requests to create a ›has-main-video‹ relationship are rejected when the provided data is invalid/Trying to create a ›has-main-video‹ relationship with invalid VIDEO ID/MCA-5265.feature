@REQ_MCA-5260
Feature: Create PROGRAMME EPISODE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a PROGRAMME EPISODE
  So an API consumer can instantly load the VIDEO that best represents the PROGRAMME EPISODE

  @RULE_MCA-5263
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5265
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be rejected with status code 404
