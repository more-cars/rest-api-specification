@REQ_MCA-4412
Feature: Get all CAR MODEL-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a CAR MODEL
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4413
  Rule: A list of all ›has-video‹ relationships is returned when the provided data is valid

    @TEST_MCA-4414 @implemented
    Scenario: Requesting the ›has-video‹ relationships when at least one exists
      Given there exists a "CAR MODEL" "Testarossa"
      And there exist 3 "has-video" relationships for "Testarossa"
      When the user requests all "has-video" relationships for "Testarossa"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-video" relationships
