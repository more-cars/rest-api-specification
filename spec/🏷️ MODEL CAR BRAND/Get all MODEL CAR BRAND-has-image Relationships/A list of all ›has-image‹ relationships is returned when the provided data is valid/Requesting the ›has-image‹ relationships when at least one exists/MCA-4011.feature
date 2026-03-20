@REQ_MCA-4009
Feature: Get all MODEL CAR BRAND-has-image Relationships

  @RULE_MCA-4010
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-4011 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exist 3 "has image" relationships for "Hot Wheels"
      When the user requests all "has image" relationships for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
