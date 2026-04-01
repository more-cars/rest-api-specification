@REQ_MCA-4385
Feature: Get COMPANY-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a COMPANY
  So I can instantly load the VIDEO that best represents the COMPANY

  @RULE_MCA-4386
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4387 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "has-main-video" relationship "R" for "BMW AG"
      When the user requests the "has-main-video" relationship for "BMW AG"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
