@REQ_MCA-5055
Feature: Get MODEL CAR BRAND-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MODEL CAR BRAND
  So I can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5060
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5061
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user requests the "has-main-video" relationship for "Hot Wheels"
      Then the request should be rejected with status code 404
