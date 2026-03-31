@REQ_MCA-4493
Feature: Get CAR MODEL VARIANT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a CAR MODEL VARIANT
  So I can instantly load the VIDEO that best represents the CAR MODEL VARIANT

  @RULE_MCA-4494
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4495
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "has-main-video" relationship "R" for "BMW M3 CSL"
      When the user requests the "has-main-video" relationship for "BMW M3 CSL"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
