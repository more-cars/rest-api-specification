@REQ_MCA-3359
Feature: Get all PROGRAMME-has-image Relationships

  @RULE_MCA-3362
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given PROGRAMME

    @TEST_MCA-3363 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exist 0 "has image" relationships for "The Grand Tour"
      When the user requests all "has image" relationships for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
