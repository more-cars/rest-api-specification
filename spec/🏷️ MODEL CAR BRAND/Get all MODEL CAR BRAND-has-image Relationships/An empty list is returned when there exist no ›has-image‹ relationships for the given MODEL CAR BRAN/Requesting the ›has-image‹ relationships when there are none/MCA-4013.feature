@REQ_MCA-4009
Feature: Get all MODEL CAR BRAND-has-image Relationships

  @RULE_MCA-4012
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given MODEL CAR BRAND

    @TEST_MCA-4013
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exist 0 "has image" relationships for "Hot Wheels"
      When the user requests all "has image" relationships for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
