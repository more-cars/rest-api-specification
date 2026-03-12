@REQ_MCA-3332
Feature: Get all PROGRAMME-has-episode Relationships

  @RULE_MCA-3337
  Rule: A request to fetch all ›has-episode‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3338 @implemented
    Scenario: Trying to fetch the ›has-episode‹ relationships with an invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      When the user requests all "has episode" relationships for "The Grand Tour"
      Then the request should be rejected with status code 404
