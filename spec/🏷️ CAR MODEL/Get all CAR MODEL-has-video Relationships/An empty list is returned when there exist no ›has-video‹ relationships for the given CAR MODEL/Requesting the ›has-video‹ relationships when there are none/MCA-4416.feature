@REQ_MCA-4412
Feature: Get all CAR MODEL-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a CAR MODEL
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4415
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given CAR MODEL

    @TEST_MCA-4416
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "CAR MODEL" "Testarossa"
      And there exist 0 "has-video" relationships for "Testarossa"
      When the user requests all "has-video" relationships for "Testarossa"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
