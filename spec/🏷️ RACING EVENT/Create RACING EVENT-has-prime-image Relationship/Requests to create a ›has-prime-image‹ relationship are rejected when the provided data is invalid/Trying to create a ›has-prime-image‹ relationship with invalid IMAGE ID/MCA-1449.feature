@REQ_MCA-1444
Feature: Create RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1447
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1449 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING EVENT" "GP Monaco"
      And "IMAGE" "Race Start" does NOT exist
      When the user creates a "has prime image" relationship between "GP Monaco" and "Race Start"
      Then the request should be rejected with status code 404
