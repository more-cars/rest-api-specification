@REQ_MCA-4009
Feature: Get all MODEL CAR BRAND-has-image Relationships

  @RULE_MCA-4014
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4015
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user requests all "has image" relationships for "Hot Wheels"
      Then the request should be rejected with status code 404
