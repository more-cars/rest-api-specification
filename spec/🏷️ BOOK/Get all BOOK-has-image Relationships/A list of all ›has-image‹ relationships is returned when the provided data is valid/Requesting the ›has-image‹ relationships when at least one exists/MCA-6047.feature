@REQ_MCA-6045
Feature: Get all BOOK-has-image Relationships
  As an API consumer
  I want to be able to fetch all IMAGES that are connected to a BOOK
  So I can get a better picture of it

  @RULE_MCA-6046
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-6047 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exist 3 "has-image" relationships for "F1 in Numbers"
      When the user requests all "has-image" relationships for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-image" relationships
