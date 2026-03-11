@REQ_MCA-3359
Feature: Get all PROGRAMME-has-image Relationships

  @RULE_MCA-3360
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-3361
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exist 3 "has image" relationships for "The Grand Tour"
      When the user requests all "has image" relationships for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
