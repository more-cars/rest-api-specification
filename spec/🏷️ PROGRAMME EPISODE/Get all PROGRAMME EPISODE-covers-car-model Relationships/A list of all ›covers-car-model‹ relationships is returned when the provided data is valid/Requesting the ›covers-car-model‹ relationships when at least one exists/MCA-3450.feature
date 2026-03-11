@REQ_MCA-3448
Feature: Get all PROGRAMME EPISODE-covers-car-model Relationships

  @RULE_MCA-3449
  Rule: A list of all ›covers-car-model‹ relationships is returned when the provided data is valid

    @TEST_MCA-3450
    Scenario: Requesting the ›covers-car-model‹ relationships when at least one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 3 "covers car model" relationships for "The Holy Trinity"
      When the user requests all "covers car model" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covers car model" relationships
