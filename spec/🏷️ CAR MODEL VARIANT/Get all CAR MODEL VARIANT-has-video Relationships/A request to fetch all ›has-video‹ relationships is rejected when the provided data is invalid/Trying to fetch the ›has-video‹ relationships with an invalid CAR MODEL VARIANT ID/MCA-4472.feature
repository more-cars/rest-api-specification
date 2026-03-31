@REQ_MCA-4466
Feature: Get all CAR MODEL VARIANT-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a CAR MODEL VARIANT
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4471
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4472
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      When the user requests all "has-video" relationships for "BMW M3 CSL"
      Then the request should be rejected with status code 404
