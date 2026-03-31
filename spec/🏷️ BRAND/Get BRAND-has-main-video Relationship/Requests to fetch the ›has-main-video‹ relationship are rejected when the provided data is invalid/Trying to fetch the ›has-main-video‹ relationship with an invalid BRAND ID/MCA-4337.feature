@REQ_MCA-4331
Feature: Get BRAND-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a BRAND
  So I can instantly load the VIDEO that best represents the BRAND

  @RULE_MCA-4336
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4337
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid BRAND ID
      Given "BRAND" "BMW" does NOT exist
      When the user requests the "has-main-video" relationship for "BMW"
      Then the request should be rejected with status code 404
