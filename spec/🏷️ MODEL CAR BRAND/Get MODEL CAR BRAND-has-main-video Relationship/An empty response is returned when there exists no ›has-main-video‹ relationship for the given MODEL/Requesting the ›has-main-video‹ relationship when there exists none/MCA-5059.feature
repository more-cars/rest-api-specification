@REQ_MCA-5055
Feature: Get MODEL CAR BRAND-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MODEL CAR BRAND
  So I can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5058
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given MODEL CAR BRAND

    @TEST_MCA-5059 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists NO "has-main-video" relationship for "Hot Wheels"
      When the user requests the "has-main-video" relationship for "Hot Wheels"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
