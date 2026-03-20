@REQ_MCA-4192
Feature: Get all CAR MODEL VARIANT-has-scale-model Relationships

  @RULE_MCA-4197
  Rule: A request to fetch all ›has-scale-model‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4198 @implemented
    Scenario: Trying to fetch the ›has-scale-model‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      When the user requests all "has scale model" relationships for "BMW M3 CSL"
      Then the request should be rejected with status code 404
