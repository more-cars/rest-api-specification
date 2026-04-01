@REQ_MCA-4771
Feature: Get RACING SERIES-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING SERIES
  So I can instantly load the VIDEO that best represents the RACING SERIES

  @RULE_MCA-4776
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4777 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid RACING SERIES ID
      Given "RACING SERIES" "Formula 1" does NOT exist
      When the user requests the "has-main-video" relationship for "Formula 1"
      Then the request should be rejected with status code 404
