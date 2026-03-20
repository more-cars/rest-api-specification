@REQ_MCA-4107
Feature: Get all PRICE-has-image Relationships

  @RULE_MCA-4108
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-4109 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "PRICE" "Brand New"
      And there exist 3 "has image" relationships for "Brand New"
      When the user requests all "has image" relationships for "Brand New"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
