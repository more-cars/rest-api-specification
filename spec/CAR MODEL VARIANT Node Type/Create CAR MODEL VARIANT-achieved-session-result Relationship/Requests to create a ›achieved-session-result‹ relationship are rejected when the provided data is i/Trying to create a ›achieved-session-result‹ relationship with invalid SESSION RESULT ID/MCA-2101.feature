@REQ_MCA-2096
Feature: Create CAR MODEL VARIANT-achieved-session-result Relationship

  @RULE_MCA-2099
  Rule: Requests to create a ›achieved-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2101 @implemented
    Scenario: Trying to create a ›achieved-session-result‹ relationship with invalid SESSION RESULT ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And "SESSION RESULT" "1st place" does NOT exist
      When the user creates a "achieved session result" relationship between "BMW M3 GTR" and "1st place"
      Then the request should be rejected with status code 404
