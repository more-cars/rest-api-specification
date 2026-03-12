@REQ_MCA-3332
Feature: Get all PROGRAMME-has-episode Relationships

  @RULE_MCA-3333
  Rule: A list of all ›has-episode‹ relationships is returned when the provided data is valid

    @TEST_MCA-3334 @implemented
    Scenario: Requesting the ›has-episode‹ relationships when at least one exists
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exist 3 "has episode" relationships for "The Grand Tour"
      When the user requests all "has episode" relationships for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has episode" relationships
