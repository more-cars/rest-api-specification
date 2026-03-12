@REQ_MCA-3711
Feature: Get all CAR MODEL VARIANT-presented-at-motor-show Relationships

  @RULE_MCA-3716
  Rule: A request to fetch all ›presented-at-motor-show‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3717 @implemented
    Scenario: Trying to fetch the ›presented-at-motor-show‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW i8" does NOT exist
      When the user requests all "presented at motor show" relationships for "BMW i8"
      Then the request should be rejected with status code 404
