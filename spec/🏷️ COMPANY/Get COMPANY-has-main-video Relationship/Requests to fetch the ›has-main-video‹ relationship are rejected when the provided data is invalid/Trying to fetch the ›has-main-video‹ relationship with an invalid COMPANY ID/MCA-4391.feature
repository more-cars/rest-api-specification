@REQ_MCA-4385
Feature: Get COMPANY-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a COMPANY
  So I can instantly load the VIDEO that best represents the COMPANY

  @RULE_MCA-4390
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4391 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid COMPANY ID
      Given "COMPANY" "BMW AG" does NOT exist
      When the user requests the "has-main-video" relationship for "BMW AG"
      Then the request should be rejected with status code 404
