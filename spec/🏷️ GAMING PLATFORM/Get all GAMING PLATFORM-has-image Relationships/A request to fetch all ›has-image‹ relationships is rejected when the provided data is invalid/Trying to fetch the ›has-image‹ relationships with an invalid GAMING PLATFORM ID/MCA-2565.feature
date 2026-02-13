@REQ_MCA-2559
Feature: Get all GAMING PLATFORM-has-image Relationships

  @RULE_MCA-2564
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2565 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid GAMING PLATFORM ID
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user requests all "has image" relationships for "PlayStation 5"
      Then the request should be rejected with status code 404
