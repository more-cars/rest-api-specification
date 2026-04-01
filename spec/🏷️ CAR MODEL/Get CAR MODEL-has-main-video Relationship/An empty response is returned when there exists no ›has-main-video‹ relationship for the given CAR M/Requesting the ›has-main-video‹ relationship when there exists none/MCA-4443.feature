@REQ_MCA-4439
Feature: Get CAR MODEL-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a CAR MODEL
  So I can instantly load the VIDEO that best represents the CAR MODEL

  @RULE_MCA-4442
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given CAR MODEL

    @TEST_MCA-4443 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists NO "has-main-video" relationship for "Testarossa"
      When the user requests the "has-main-video" relationship for "Testarossa"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
