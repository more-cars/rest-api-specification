@REQ_MCA-4331
Feature: Get BRAND-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a BRAND
  So I can instantly load the VIDEO that best represents the BRAND

  @RULE_MCA-4332
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4333
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "BRAND" "BMW"
      And there exists a "has-main-video" relationship "R" for "BMW"
      When the user requests the "has-main-video" relationship for "BMW"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
