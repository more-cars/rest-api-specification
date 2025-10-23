@REQ_MCA-1184
Feature: Create RACING SERIES-has-racing-event Relationship

  @RULE_MCA-1187
  Rule: Requests to create a ›has-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1189 @implemented
    Scenario: Trying to create a ›has-racing-event‹ relationship with invalid RACING EVENT ID
      Given there exists a "RACING SERIES" "Formula 1"
      And "RACING EVENT" "GP Monaco" does NOT exist
      When the user creates a "has racing event" relationship between "Formula 1" and "GP Monaco"
      Then the request should be rejected with status code 404
