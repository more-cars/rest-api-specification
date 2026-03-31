@REQ_MCA-4493
Feature: Get CAR MODEL VARIANT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a CAR MODEL VARIANT
  So I can instantly load the VIDEO that best represents the CAR MODEL VARIANT

  @RULE_MCA-4496
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given CAR MODEL VARIANT

    @TEST_MCA-4497
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists NO "has-main-video" relationship for "BMW M3 CSL"
      When the user requests the "has-main-video" relationship for "BMW M3 CSL"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
