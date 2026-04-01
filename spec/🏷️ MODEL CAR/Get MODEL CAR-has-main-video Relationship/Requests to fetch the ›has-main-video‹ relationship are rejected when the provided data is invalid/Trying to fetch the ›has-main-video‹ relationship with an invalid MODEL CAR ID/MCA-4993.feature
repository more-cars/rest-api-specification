@REQ_MCA-4987
Feature: Get MODEL CAR-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a MODEL CAR
  So I can instantly load the VIDEO that best represents the MODEL CAR

  @RULE_MCA-4992
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4993 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid MODEL CAR ID
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      When the user requests the "has-main-video" relationship for "Hot Wheels F40"
      Then the request should be rejected with status code 404
