@REQ_MCA-877
Feature: Create CAR MODEL-is-successor-of Relationship

  @RULE_MCA-880
  Rule: Requests to create a ›is-successor-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-882 @implemented
    Scenario: Trying to create a ›is-successor-of‹ relationship with invalid PARTNER ID
      Given there exists a "CAR MODEL" "Golf IV"
      And "CAR MODEL" "Golf III" does NOT exist
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf III"
      Then the request should be rejected with status code 404
