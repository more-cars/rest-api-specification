@REQ_MCA-3982
Feature: Get all MODEL CAR BRAND-created-model-car Relationships

  @RULE_MCA-3983
  Rule: A list of all ›created-model-car‹ relationships is returned when the provided data is valid

    @TEST_MCA-3984
    Scenario: Requesting the ›created-model-car‹ relationships when at least one exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exist 3 "created model car" relationships for "Hot Wheels"
      When the user requests all "created model car" relationships for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "created model car" relationships
