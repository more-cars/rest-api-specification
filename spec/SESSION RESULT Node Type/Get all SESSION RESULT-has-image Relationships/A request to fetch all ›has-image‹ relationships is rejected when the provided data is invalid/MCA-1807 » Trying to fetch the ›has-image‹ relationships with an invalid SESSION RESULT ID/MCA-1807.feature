@REQ_MCA-1801
Feature: Get all SESSION RESULT-has-image Relationships

  @RULE_MCA-1806
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1807
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid SESSION RESULT ID
      Given "SESSION RESULT" "1st place" does NOT exist
      When the user requests all "has image" relationships for "1st place"
      Then the request should be rejected with status code 404
