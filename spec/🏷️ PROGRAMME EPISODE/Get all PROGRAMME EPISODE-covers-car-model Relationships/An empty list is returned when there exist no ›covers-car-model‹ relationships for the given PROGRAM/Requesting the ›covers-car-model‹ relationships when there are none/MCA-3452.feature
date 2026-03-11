@REQ_MCA-3448
Feature: Get all PROGRAMME EPISODE-covers-car-model Relationships

  @RULE_MCA-3451
  Rule: An empty list is returned when there exist no ›covers-car-model‹ relationships for the given PROGRAMME EPISODE

    @TEST_MCA-3452
    Scenario: Requesting the ›covers-car-model‹ relationships when there are none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 0 "covers car model" relationships for "The Holy Trinity"
      When the user requests all "covers car model" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
