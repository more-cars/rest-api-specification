@REQ_MCA-2393
Feature: Get all RACING GAME-has-image Relationships

  @RULE_MCA-2398
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2399 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      When the user requests all "has image" relationships for "F1 2025"
      Then the request should be rejected with status code 404
