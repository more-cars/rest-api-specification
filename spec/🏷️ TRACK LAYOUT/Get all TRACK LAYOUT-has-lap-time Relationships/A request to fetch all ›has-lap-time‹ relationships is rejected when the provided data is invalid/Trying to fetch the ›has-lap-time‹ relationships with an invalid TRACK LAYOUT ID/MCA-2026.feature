@REQ_MCA-2020
Feature: Get all TRACK LAYOUT-has-lap-time Relationships

  @RULE_MCA-2025
  Rule: A request to fetch all ›has-lap-time‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2026 @implemented
    Scenario: Trying to fetch the ›has-lap-time‹ relationships with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Club Circuit" does NOT exist
      When the user requests all "has lap time" relationships for "Club Circuit"
      Then the request should be rejected with status code 404
