@REQ_MCA-877
Feature: Create CAR MODEL-is-successor-of Relationship

  @RULE_MCA-880
  Rule: Requests to create a ›is-successor-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-881 @implemented
    Scenario: Trying to create a ›is-successor-of‹ relationship with invalid CAR MODEL ID
      Given "CAR MODEL" "Golf IV" does NOT exist
      And there exists a "CAR MODEL" "Golf III"
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf III"
      Then the request should be rejected with status code 404
