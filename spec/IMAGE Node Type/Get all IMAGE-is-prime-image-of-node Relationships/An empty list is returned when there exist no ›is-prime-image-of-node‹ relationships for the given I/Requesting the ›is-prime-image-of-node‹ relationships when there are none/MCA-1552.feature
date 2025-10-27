@REQ_MCA-1548
Feature: Get all IMAGE-is-prime-image-of-node Relationships

  @RULE_MCA-1551
  Rule: An empty list is returned when there exist no ›is-prime-image-of-node‹ relationships for the given IMAGE

    @TEST_MCA-1552
    Scenario: Requesting the ›is-prime-image-of-node‹ relationships when there are none
      Given there exists a "IMAGE" "BMW Logo"
      And there exist 0 "is prime image of node" relationships for "BMW Logo"
      When the user requests all "is prime image of node" relationships for "BMW Logo"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
