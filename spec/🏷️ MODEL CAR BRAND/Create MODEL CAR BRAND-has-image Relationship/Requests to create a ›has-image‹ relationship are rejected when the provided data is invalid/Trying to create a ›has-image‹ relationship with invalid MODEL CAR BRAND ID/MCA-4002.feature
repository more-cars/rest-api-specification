@REQ_MCA-3998
Feature: Create MODEL CAR BRAND-has-image Relationship

  @RULE_MCA-4001
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4002 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And there exists a "IMAGE" "Hot Wheels logo"
      When the user creates a "has image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then the request should be rejected with status code 404
