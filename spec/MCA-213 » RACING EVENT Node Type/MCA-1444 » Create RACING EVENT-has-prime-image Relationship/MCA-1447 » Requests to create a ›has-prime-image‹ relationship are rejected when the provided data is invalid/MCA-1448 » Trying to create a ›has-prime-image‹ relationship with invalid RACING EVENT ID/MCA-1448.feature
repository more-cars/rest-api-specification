@REQ_MCA-1444
Feature: Create RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1447
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1448 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      And there exists a "IMAGE" "Race Start"
      When the user creates a "has prime image" relationship between "GP Monaco" and "Race Start"
      Then the request should be rejected with status code 404
