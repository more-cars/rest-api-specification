@REQ_MCA-3332
Feature: Get all PROGRAMME-has-episode Relationships

  @RULE_MCA-3335
  Rule: An empty list is returned when there exist no ›has-episode‹ relationships for the given PROGRAMME

    @TEST_MCA-3336 @implemented
    Scenario: Requesting the ›has-episode‹ relationships when there are none
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exist 0 "has episode" relationships for "The Grand Tour"
      When the user requests all "has episode" relationships for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
