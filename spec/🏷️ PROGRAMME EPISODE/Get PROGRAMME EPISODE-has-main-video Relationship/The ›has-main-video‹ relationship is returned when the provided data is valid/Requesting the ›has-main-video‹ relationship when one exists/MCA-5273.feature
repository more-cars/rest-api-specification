@REQ_MCA-5271
Feature: Get PROGRAMME EPISODE-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a PROGRAMME EPISODE
  So I can instantly load the VIDEO that best represents the PROGRAMME EPISODE

  @RULE_MCA-5272
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-5273 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "has-main-video" relationship "R" for "The Holy Trinity"
      When the user requests the "has-main-video" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
