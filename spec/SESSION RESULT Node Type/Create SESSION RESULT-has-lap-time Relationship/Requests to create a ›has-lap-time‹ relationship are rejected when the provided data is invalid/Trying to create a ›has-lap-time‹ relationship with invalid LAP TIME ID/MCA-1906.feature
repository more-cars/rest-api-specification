@REQ_MCA-1901
Feature: Create SESSION RESULT-has-lap-time Relationship

  @RULE_MCA-1904
  Rule: Requests to create a ›has-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1906 @implemented
    Scenario: Trying to create a ›has-lap-time‹ relationship with invalid LAP TIME ID
      Given there exists a "SESSION RESULT" "Grand Prix"
      And "LAP TIME" "fastest lap" does NOT exist
      When the user creates a "has lap time" relationship between "Grand Prix" and "fastest lap"
      Then the request should be rejected with status code 404
