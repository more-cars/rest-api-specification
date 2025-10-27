@REQ_MCA-1548
Feature: Get all IMAGE-is-prime-image-of-node Relationships

  @RULE_MCA-1549
  Rule: A list of all ›is-prime-image-of-node‹ relationships is returned when the provided data is valid

    @TEST_MCA-1550
    Scenario: Requesting the ›is-prime-image-of-node‹ relationships when at least one exists
      Given there exists a "IMAGE" "BMW Logo"
      And there exist 3 "is prime image of node" relationships for "BMW Logo"
      When the user requests all "is prime image of node" relationships for "BMW Logo"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "is prime image of node" relationships
