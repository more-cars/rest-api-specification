@REQ_MCA-5964
Feature: Get all BOOK-covers-car-model-variant Relationships

  @RULE_MCA-5969
  Rule: A request to fetch all ›covers-car-model-variant‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5970 @implemented
    Scenario: Trying to fetch the ›covers-car-model-variant‹ relationships with an invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user requests all "covers car model variant" relationships for "F1 in Numbers"
      Then the request should be rejected with status code 404
