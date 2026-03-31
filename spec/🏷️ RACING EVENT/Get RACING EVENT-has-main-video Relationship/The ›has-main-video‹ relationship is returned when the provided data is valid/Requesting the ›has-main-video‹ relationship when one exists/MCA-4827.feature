@REQ_MCA-4825
Feature: Get RACING EVENT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING EVENT
  So I can instantly load the VIDEO that best represents the RACING EVENT

  @RULE_MCA-4826
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4827
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists a "has-main-video" relationship "R" for "F1 GP Monaco"
      When the user requests the "has-main-video" relationship for "F1 GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
