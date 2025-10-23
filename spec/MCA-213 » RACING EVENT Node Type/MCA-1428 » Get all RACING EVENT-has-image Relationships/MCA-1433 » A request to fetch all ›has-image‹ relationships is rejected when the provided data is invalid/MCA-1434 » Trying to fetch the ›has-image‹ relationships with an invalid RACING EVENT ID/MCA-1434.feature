@REQ_MCA-1428
Feature: Get all RACING EVENT-has-image Relationships

  @RULE_MCA-1433
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1434 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Silverstone" does NOT exist
      When the user requests all "has image" relationships for "GP Silverstone"
      Then the request should be rejected with status code 404
