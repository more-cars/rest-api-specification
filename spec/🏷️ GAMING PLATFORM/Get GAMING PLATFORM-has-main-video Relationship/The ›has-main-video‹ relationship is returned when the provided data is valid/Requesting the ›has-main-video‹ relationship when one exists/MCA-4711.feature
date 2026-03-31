@REQ_MCA-4709
Feature: Get GAMING PLATFORM-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a GAMING PLATFORM
  So I can instantly load the VIDEO that best represents the GAMING PLATFORM

  @RULE_MCA-4710
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4711
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "has-main-video" relationship "R" for "Xbox"
      When the user requests the "has-main-video" relationship for "Xbox"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
