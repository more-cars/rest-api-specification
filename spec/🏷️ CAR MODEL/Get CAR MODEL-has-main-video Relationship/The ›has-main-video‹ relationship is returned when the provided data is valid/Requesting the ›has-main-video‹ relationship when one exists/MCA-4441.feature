@REQ_MCA-4439
Feature: Get CAR MODEL-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a CAR MODEL
  So I can instantly load the VIDEO that best represents the CAR MODEL

  @RULE_MCA-4440
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4441
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "has-main-video" relationship "R" for "Testarossa"
      When the user requests the "has-main-video" relationship for "Testarossa"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
