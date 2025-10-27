@REQ_MCA-1509
Feature: Get all TRACK LAYOUT-was-used-by-racing-event Relationships

  @RULE_MCA-1514
  Rule: A request to fetch all ›was-used-by-racing-event‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1515 @implemented
    Scenario: Trying to fetch the ›was-used-by-racing-event‹ relationships with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Grand Prix Circuit" does NOT exist
      When the user requests all "was used by racing event" relationships for "Grand Prix Circuit"
      Then the request should be rejected with status code 404
