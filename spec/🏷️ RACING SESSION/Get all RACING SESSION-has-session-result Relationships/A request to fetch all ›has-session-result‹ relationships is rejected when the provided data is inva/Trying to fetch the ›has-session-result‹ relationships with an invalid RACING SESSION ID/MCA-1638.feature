@REQ_MCA-1632
Feature: Get all RACING SESSION-has-session-result Relationships

  @RULE_MCA-1637
  Rule: A request to fetch all ›has-session-result‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1638 @implemented
    Scenario: Trying to fetch the ›has-session-result‹ relationships with an invalid RACING SESSION ID
      Given "RACING SESSION" "Qualifying" does NOT exist
      When the user requests all "has session result" relationships for "Qualifying"
      Then the request should be rejected with status code 404
