@REQ_MCA-4771
Feature: Get RACING SERIES-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING SERIES
  So I can instantly load the VIDEO that best represents the RACING SERIES

  @RULE_MCA-4772
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4773
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "has-main-video" relationship "R" for "Formula 1"
      When the user requests the "has-main-video" relationship for "Formula 1"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
