@REQ_MCA-1097
Feature: Get all TRACK LAYOUT-has-image Relationships

  @RULE_MCA-1102
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1103 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      When the user requests all "has-image" relationships for "GP Circuit"
      Then the request should be rejected with status code 404
