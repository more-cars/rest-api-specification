@REQ_MCA-3982
Feature: Get all MODEL CAR BRAND-created-model-car Relationships

  @RULE_MCA-3987
  Rule: A request to fetch all ›created-model-car‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3988 @implemented
    Scenario: Trying to fetch the ›created-model-car‹ relationships with an invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user requests all "created model car" relationships for "Hot Wheels"
      Then the request should be rejected with status code 404
