@REQ_MCA-4628
Feature: Get all RACING GAME-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING GAME
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4633
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4634
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      When the user requests all "has-video" relationships for "Assetto Corsa"
      Then the request should be rejected with status code 404
