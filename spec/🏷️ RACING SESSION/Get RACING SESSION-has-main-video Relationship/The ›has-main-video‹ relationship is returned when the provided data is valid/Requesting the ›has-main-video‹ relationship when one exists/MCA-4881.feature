@REQ_MCA-4879
Feature: Get RACING SESSION-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING SESSION
  So I can instantly load the VIDEO that best represents the RACING SESSION

  @RULE_MCA-4880
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4881
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "has-main-video" relationship "R" for "Qualifying"
      When the user requests the "has-main-video" relationship for "Qualifying"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
