@REQ_MCA-5964
Feature: Get all BOOK-covers-car-model-variant Relationships

  @RULE_MCA-5965
  Rule: A list of all ›covers-car-model-variant‹ relationships is returned when the provided data is valid

    @TEST_MCA-5966 @implemented
    Scenario: Requesting the ›covers-car-model-variant‹ relationships when at least one exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exist 3 "covers car model variant" relationships for "F1 in Numbers"
      When the user requests all "covers car model variant" relationships for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covers car model variant" relationships
