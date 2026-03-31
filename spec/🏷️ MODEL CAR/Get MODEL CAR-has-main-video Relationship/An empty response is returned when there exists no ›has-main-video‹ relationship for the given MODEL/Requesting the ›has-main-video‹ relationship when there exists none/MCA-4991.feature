@REQ_MCA-4987
Feature: Get MODEL CAR-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MODEL CAR
  So I can instantly load the VIDEO that best represents the MODEL CAR

  @RULE_MCA-4990
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given MODEL CAR

    @TEST_MCA-4991
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists NO "has-main-video" relationship for "Hot Wheels F40"
      When the user requests the "has-main-video" relationship for "Hot Wheels F40"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
