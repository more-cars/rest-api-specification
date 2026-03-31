@REQ_MCA-5055
Feature: Get MODEL CAR BRAND-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MODEL CAR BRAND
  So I can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5056
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-5057
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "has-main-video" relationship "R" for "Hot Wheels"
      When the user requests the "has-main-video" relationship for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
