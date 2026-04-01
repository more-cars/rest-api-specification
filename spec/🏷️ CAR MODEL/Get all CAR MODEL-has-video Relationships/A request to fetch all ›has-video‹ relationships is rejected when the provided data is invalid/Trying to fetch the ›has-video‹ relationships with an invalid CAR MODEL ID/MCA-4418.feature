@REQ_MCA-4412
Feature: Get all CAR MODEL-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a CAR MODEL
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4417
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4418 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid CAR MODEL ID
      Given "CAR MODEL" "Testarossa" does NOT exist
      When the user requests all "has-video" relationships for "Testarossa"
      Then the request should be rejected with status code 404
