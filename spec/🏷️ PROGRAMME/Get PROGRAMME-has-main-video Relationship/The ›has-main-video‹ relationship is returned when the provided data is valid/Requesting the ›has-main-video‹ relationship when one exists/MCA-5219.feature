@REQ_MCA-5217
Feature: Get PROGRAMME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a PROGRAMME
  So I can instantly load the VIDEO that best represents the PROGRAMME

  @RULE_MCA-5218
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-5219
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "has-main-video" relationship "R" for "The Grand Tour"
      When the user requests the "has-main-video" relationship for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
