@REQ_MCA-4520
Feature: Get all RACE TRACK-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACE TRACK
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4525
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4526
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid RACE TRACK ID
      Given "RACE TRACK" "Nürburgring" does NOT exist
      When the user requests all "has-video" relationships for "Nürburgring"
      Then the request should be rejected with status code 404
