@REQ_MCA-3982
Feature: Get all MODEL CAR BRAND-created-model-car Relationships

  @RULE_MCA-3985
  Rule: An empty list is returned when there exist no ›created-model-car‹ relationships for the given MODEL CAR BRAND

    @TEST_MCA-3986 @implemented
    Scenario: Requesting the ›created-model-car‹ relationships when there are none
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exist 0 "created model car" relationships for "Hot Wheels"
      When the user requests all "created model car" relationships for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
