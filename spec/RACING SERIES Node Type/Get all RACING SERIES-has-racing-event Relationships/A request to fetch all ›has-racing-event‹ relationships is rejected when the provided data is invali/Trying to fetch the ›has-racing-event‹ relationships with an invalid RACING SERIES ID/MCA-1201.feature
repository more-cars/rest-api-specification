@REQ_MCA-1195
Feature: Get all RACING SERIES-has-racing-event Relationships

  @RULE_MCA-1200
  Rule: A request to fetch all ›has-racing-event‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1201 @implemented
    Scenario: Trying to fetch the ›has-racing-event‹ relationships with an invalid RACING SERIES ID
      Given "RACING SERIES" "Formula 1" does NOT exist
      When the user requests all "has racing event" relationships for "Formula 1"
      Then the request should be rejected with status code 404
