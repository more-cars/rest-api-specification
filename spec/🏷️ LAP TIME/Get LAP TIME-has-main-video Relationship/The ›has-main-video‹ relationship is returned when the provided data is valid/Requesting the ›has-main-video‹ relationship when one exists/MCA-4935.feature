@REQ_MCA-4933
Feature: Get LAP TIME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a LAP TIME
  So I can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4934
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4935 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "has-main-video" relationship "R" for "Fastest Lap"
      When the user requests the "has-main-video" relationship for "Fastest Lap"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
