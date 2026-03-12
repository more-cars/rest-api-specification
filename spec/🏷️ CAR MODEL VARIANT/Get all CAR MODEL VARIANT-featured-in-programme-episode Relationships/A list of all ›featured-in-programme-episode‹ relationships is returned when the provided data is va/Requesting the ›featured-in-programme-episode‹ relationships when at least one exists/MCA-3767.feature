@REQ_MCA-3765
Feature: Get all CAR MODEL VARIANT-featured-in-programme-episode Relationships

  @RULE_MCA-3766
  Rule: A list of all ›featured-in-programme-episode‹ relationships is returned when the provided data is valid

    @TEST_MCA-3767 @implemented
    Scenario: Requesting the ›featured-in-programme-episode‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And there exist 3 "featured in programme episode" relationships for "McLaren P1"
      When the user requests all "featured in programme episode" relationships for "McLaren P1"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "featured in programme episode" relationships
