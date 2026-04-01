@REQ_MCA-4655
Feature: Get RACING GAME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING GAME
  So I can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4656
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4657 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "has-main-video" relationship "R" for "Assetto Corsa"
      When the user requests the "has-main-video" relationship for "Assetto Corsa"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
