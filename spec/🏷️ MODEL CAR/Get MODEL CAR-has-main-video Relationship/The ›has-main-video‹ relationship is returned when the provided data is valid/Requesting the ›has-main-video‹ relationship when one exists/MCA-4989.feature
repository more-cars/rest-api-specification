@REQ_MCA-4987
Feature: Get MODEL CAR-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MODEL CAR
  So I can instantly load the VIDEO that best represents the MODEL CAR

  @RULE_MCA-4988
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4989
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "has-main-video" relationship "R" for "Hot Wheels F40"
      When the user requests the "has-main-video" relationship for "Hot Wheels F40"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
