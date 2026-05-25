@REQ_MCA-6045
Feature: Get all BOOK-has-image Relationships
  As an API consumer
  I want to be able to fetch all IMAGES that are connected to a BOOK
  So I can get a better picture of it

  @RULE_MCA-6048
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given BOOK

    @TEST_MCA-6049 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "BOOK" "F1 in Numbers"
      And there exist 0 "has-image" relationships for "F1 in Numbers"
      When the user requests all "has-image" relationships for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
