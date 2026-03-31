@REQ_MCA-4331
Feature: Get BRAND-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a BRAND
  So I can instantly load the VIDEO that best represents the BRAND

  @RULE_MCA-4334
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given BRAND

    @TEST_MCA-4335
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "BRAND" "BMW"
      And there exists NO "has-main-video" relationship for "BMW"
      When the user requests the "has-main-video" relationship for "BMW"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
