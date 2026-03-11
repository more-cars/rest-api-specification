@REQ_MCA-3738
Feature: Get all CAR MODEL-covered-by-programme-episode Relationships

  @RULE_MCA-3741
  Rule: An empty list is returned when there exist no ›covered-by-programme-episode‹ relationships for the given CAR MODEL

    @TEST_MCA-3742
    Scenario: Requesting the ›covered-by-programme-episode‹ relationships when there are none
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exist 0 "covered by programme episode" relationships for "McLaren P1"
      When the user requests all "covered by programme episode" relationships for "McLaren P1"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
