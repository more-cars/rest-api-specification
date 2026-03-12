@REQ_MCA-3738
Feature: Get all CAR MODEL-covered-by-programme-episode Relationships

  @RULE_MCA-3739
  Rule: A list of all ›covered-by-programme-episode‹ relationships is returned when the provided data is valid

    @TEST_MCA-3740 @implemented
    Scenario: Requesting the ›covered-by-programme-episode‹ relationships when at least one exists
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exist 3 "covered by programme episode" relationships for "McLaren P1"
      When the user requests all "covered by programme episode" relationships for "McLaren P1"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covered by programme episode" relationships
