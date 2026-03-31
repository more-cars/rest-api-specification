@REQ_MCA-4655
Feature: Get RACING GAME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING GAME
  So I can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4658
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given RACING GAME

    @TEST_MCA-4659
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists NO "has-main-video" relationship for "Assetto Corsa"
      When the user requests the "has-main-video" relationship for "Assetto Corsa"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
