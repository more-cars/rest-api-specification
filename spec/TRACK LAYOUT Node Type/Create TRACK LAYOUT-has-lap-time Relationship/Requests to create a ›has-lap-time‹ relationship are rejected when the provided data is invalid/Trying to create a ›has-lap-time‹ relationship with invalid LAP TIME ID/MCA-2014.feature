@REQ_MCA-2009
Feature: Create TRACK LAYOUT-has-lap-time Relationship

  @RULE_MCA-2012
  Rule: Requests to create a ›has-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2014 @implemented
    Scenario: Trying to create a ›has-lap-time‹ relationship with invalid LAP TIME ID
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And "LAP TIME" "fastest lap" does NOT exist
      When the user creates a "has lap time" relationship between "Club Circuit" and "fastest lap"
      Then the request should be rejected with status code 404
