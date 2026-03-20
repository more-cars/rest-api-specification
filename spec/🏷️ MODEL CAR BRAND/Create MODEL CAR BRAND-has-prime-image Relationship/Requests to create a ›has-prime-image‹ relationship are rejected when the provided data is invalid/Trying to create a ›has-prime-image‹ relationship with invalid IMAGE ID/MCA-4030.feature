@REQ_MCA-4025
Feature: Create MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4028
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4030 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And "IMAGE" "Hot Wheels logo" does NOT exist
      When the user creates a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then the request should be rejected with status code 404
