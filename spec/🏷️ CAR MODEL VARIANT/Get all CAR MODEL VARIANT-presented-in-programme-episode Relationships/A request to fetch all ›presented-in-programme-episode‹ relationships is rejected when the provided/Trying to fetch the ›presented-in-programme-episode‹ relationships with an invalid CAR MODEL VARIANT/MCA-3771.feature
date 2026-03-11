@REQ_MCA-3765
Feature: Get all CAR MODEL VARIANT-presented-in-programme-episode Relationships

  @RULE_MCA-3770
  Rule: A request to fetch all ›presented-in-programme-episode‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3771
    Scenario: Trying to fetch the ›presented-in-programme-episode‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "McLaren P1" does NOT exist
      When the user requests all "presented in programme episode" relationships for "McLaren P1"
      Then the request should be rejected with status code 404
