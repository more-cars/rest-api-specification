@REQ_MCA-4628
Feature: Get all RACING GAME-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING GAME
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4631
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given RACING GAME

    @TEST_MCA-4632 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exist 0 "has-video" relationships for "Assetto Corsa"
      When the user requests all "has-video" relationships for "Assetto Corsa"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
