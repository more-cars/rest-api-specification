@REQ_MCA-5325
Feature: Get MOTOR SHOW-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MOTOR SHOW
  So I can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5326
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-5327 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "has-main-video" relationship "R" for "IAA Frankfurt"
      When the user requests the "has-main-video" relationship for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
