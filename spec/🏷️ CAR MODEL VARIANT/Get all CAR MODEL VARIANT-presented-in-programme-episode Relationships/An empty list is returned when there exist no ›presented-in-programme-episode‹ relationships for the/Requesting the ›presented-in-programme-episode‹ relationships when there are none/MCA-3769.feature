@REQ_MCA-3765
Feature: Get all CAR MODEL VARIANT-presented-in-programme-episode Relationships

  @RULE_MCA-3768
  Rule: An empty list is returned when there exist no ›presented-in-programme-episode‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-3769
    Scenario: Requesting the ›presented-in-programme-episode‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And there exist 0 "presented in programme episode" relationships for "McLaren P1"
      When the user requests all "presented in programme episode" relationships for "McLaren P1"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
