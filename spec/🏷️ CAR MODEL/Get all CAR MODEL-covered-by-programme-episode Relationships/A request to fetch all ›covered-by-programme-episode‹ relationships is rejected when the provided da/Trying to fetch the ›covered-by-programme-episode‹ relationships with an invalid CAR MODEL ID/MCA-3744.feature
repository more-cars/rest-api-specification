@REQ_MCA-3738
Feature: Get all CAR MODEL-covered-by-programme-episode Relationships

  @RULE_MCA-3743
  Rule: A request to fetch all ›covered-by-programme-episode‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3744
    Scenario: Trying to fetch the ›covered-by-programme-episode‹ relationships with an invalid CAR MODEL ID
      Given "CAR MODEL" "McLaren P1" does NOT exist
      When the user requests all "covered by programme episode" relationships for "McLaren P1"
      Then the request should be rejected with status code 404
