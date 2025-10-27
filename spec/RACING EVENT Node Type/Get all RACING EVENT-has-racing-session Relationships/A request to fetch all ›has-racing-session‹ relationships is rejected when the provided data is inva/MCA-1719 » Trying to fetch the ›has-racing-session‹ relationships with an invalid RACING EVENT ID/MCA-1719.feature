@REQ_MCA-1713
Feature: Get all RACING EVENT-has-racing-session Relationships

  @RULE_MCA-1718
  Rule: A request to fetch all ›has-racing-session‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1719
    Scenario: Trying to fetch the ›has-racing-session‹ relationships with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      When the user requests all "has racing session" relationships for "GP Monaco"
      Then the request should be rejected with status code 404
