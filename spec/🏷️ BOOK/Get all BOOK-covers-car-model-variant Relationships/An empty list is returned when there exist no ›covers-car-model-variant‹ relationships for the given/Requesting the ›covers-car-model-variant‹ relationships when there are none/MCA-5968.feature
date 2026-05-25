@REQ_MCA-5964
Feature: Get all BOOK-covers-car-model-variant Relationships

  @RULE_MCA-5967
  Rule: An empty list is returned when there exist no ›covers-car-model-variant‹ relationships for the given BOOK

    @TEST_MCA-5968 @implemented
    Scenario: Requesting the ›covers-car-model-variant‹ relationships when there are none
      Given there exists a "BOOK" "F1 in Numbers"
      And there exist 0 "covers car model variant" relationships for "F1 in Numbers"
      When the user requests all "covers car model variant" relationships for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
