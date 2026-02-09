@REQ_MCA-2161
Feature: Get all CAR MODEL VARIANT-has-image Relationships

  @RULE_MCA-2166
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2167 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      When the user requests all "has image" relationships for "BMW M3"
      Then the request should be rejected with status code 404
