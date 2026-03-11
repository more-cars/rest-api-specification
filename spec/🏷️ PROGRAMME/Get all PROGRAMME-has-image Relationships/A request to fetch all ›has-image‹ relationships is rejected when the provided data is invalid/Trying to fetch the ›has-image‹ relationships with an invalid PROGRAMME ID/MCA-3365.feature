@REQ_MCA-3359
Feature: Get all PROGRAMME-has-image Relationships

  @RULE_MCA-3364
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3365
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      When the user requests all "has image" relationships for "The Grand Tour"
      Then the request should be rejected with status code 404
